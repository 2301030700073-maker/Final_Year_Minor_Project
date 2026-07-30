package org.fdroid.fdroid.panic;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.material.appbar.MaterialToolbar;
import org.fdroid.fdroid.FDroidApp;
import org.fdroid.fdroid.R;

/* loaded from: classes2.dex */
public class CalculatorActivity extends AppCompatActivity {
    private static final String DIVIDED = "÷";
    private static final String MINUS = "-";
    private static final String PERCENT = "%";
    private static final String PLUS = "+";
    private static final String TIMES = "×";
    private String lastOp;
    private TextView textView;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        FDroidApp fDroidApp = (FDroidApp) getApplication();
        fDroidApp.setSecureWindow(this);
        fDroidApp.applyPureBlackBackgroundInDarkTheme(this);
        super.onCreate(bundle);
        setContentView(R.layout.activity_calculator);
        setSupportActionBar((MaterialToolbar) findViewById(R.id.toolbar));
        this.textView = (TextView) findViewById(R.id.textView);
    }

    public void ce(View view) {
        this.textView.setText((CharSequence) null);
    }

    public void c(View view) {
        if (this.textView.length() > 0) {
            this.textView.setText(this.textView.getText().toString().substring(0, r4.length() - 1));
        }
    }

    public void number(View view) {
        String format = String.format("%s%s", this.textView.getText(), ((Button) view).getText().toString());
        if (format.equals(String.valueOf(HidingManager.getUnhidePin(this)))) {
            HidingManager.show(this);
        }
        this.textView.setText(format);
    }

    public void op(View view) {
        double d;
        String charSequence = this.textView.getText().toString();
        if (charSequence.length() == 0 || containsBinaryOperator(String.valueOf(charSequence.charAt(charSequence.length() - 1)))) {
            return;
        }
        String charSequence2 = ((Button) view).getText().toString();
        if (containsBinaryOperator(charSequence2)) {
            this.lastOp = charSequence2;
            this.textView.setText(String.format("%s%s", charSequence, charSequence2));
        } else if (charSequence2.equals(PERCENT)) {
            try {
                d = Double.valueOf(eval(charSequence)).doubleValue();
            } catch (NumberFormatException unused) {
                d = 0.0d;
            }
            this.textView.setText(toString(d / 100.0d));
        } else if ("=".equals(charSequence2)) {
            this.textView.setText(eval(charSequence));
        } else {
            Toast.makeText(this, "Error: Unknown Operation", 0).show();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0058, code lost:
    
        if (r3.equals(org.fdroid.fdroid.panic.CalculatorActivity.MINUS) == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String eval(java.lang.String r11) {
        /*
            r10 = this;
            r0 = 1
            r1 = 0
            java.lang.String r2 = ""
            java.lang.String r3 = r10.lastOp
            if (r3 == 0) goto L92
            boolean r3 = r11.contains(r3)
            if (r3 == 0) goto L92
            java.lang.String r3 = r10.lastOp
            r4 = 0
            r10.lastOp = r4
            java.lang.String r4 = java.util.regex.Pattern.quote(r3)
            java.lang.String[] r4 = r11.split(r4)
            r5 = r4[r1]     // Catch: java.lang.NumberFormatException -> L91
            java.lang.Double r5 = java.lang.Double.valueOf(r5)     // Catch: java.lang.NumberFormatException -> L91
            double r5 = r5.doubleValue()     // Catch: java.lang.NumberFormatException -> L91
            r4 = r4[r0]     // Catch: java.lang.NumberFormatException -> L91
            java.lang.Double r4 = java.lang.Double.valueOf(r4)     // Catch: java.lang.NumberFormatException -> L91
            double r7 = r4.doubleValue()     // Catch: java.lang.NumberFormatException -> L91
            r3.hashCode()
            r4 = -1
            int r9 = r3.hashCode()
            switch(r9) {
                case 43: goto L5b;
                case 45: goto L52;
                case 215: goto L47;
                case 247: goto L3c;
                default: goto L3a;
            }
        L3a:
            r0 = r4
            goto L65
        L3c:
            java.lang.String r0 = "÷"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L45
            goto L3a
        L45:
            r0 = 3
            goto L65
        L47:
            java.lang.String r0 = "×"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L50
            goto L3a
        L50:
            r0 = 2
            goto L65
        L52:
            java.lang.String r9 = "-"
            boolean r3 = r3.equals(r9)
            if (r3 != 0) goto L65
            goto L3a
        L5b:
            java.lang.String r0 = "+"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L64
            goto L3a
        L64:
            r0 = r1
        L65:
            switch(r0) {
                case 0: goto L8b;
                case 1: goto L85;
                case 2: goto L7f;
                case 3: goto L72;
                default: goto L68;
            }
        L68:
            java.lang.String r0 = "Error: Unknown Operation"
            android.widget.Toast r0 = android.widget.Toast.makeText(r10, r0, r1)
            r0.show()
            return r11
        L72:
            r0 = 0
            int r11 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r11 != 0) goto L79
            return r2
        L79:
            double r5 = r5 / r7
            java.lang.String r11 = r10.toString(r5)
            return r11
        L7f:
            double r5 = r5 * r7
            java.lang.String r11 = r10.toString(r5)
            return r11
        L85:
            double r5 = r5 - r7
            java.lang.String r11 = r10.toString(r5)
            return r11
        L8b:
            double r5 = r5 + r7
            java.lang.String r11 = r10.toString(r5)
            return r11
        L91:
            return r2
        L92:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fdroid.fdroid.panic.CalculatorActivity.eval(java.lang.String):java.lang.String");
    }

    private boolean containsBinaryOperator(String str) {
        return str.contains(TIMES) || str.contains(DIVIDED) || str.contains(PLUS) || str.contains(MINUS);
    }

    private String toString(double d) {
        String valueOf = String.valueOf(d);
        return (valueOf.length() <= 2 || !valueOf.endsWith(".0")) ? valueOf : valueOf.substring(0, valueOf.length() - 2);
    }
}
