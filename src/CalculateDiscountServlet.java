import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet(urlPatterns = "/discount")
public class CalculateDiscountServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String price = request.getParameter("listedPrice");
        String percent = request.getParameter("discountPercent");
        if (price.isEmpty() || percent.isEmpty()) request.getRequestDispatcher("index.jsp").forward(request, response);
        long listedPrice = Long.parseLong(price);
        String description = request.getParameter("description");
        float discountPercent = Float.parseFloat(percent);
        long discountAmount = (long) (listedPrice * (discountPercent / 100));
        long discountPrice = (long) (listedPrice * (100 - discountPercent) / 100);
        request.setAttribute("discountAmount", discountAmount);
        request.setAttribute("discountPrice", discountPrice);
        request.setAttribute("description", description);
        request.getRequestDispatcher("WEB-INF/display-Discount.jsp").forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
