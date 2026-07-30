package c.b.a.b.a.a.a.a.c;

import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import android.view.textclassifier.TextSelection;

/* loaded from: classes.dex */
public class v0 implements TextClassifier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x0 f2514a;

    public v0(x0 x0Var) {
        this.f2514a = x0Var;
    }

    @Override // android.view.textclassifier.TextClassifier
    public TextClassification classifyText(TextClassification.Request request) {
        TextClassification build;
        x0 x0Var = this.f2514a;
        CharSequence text = request.getText();
        int startIndex = request.getStartIndex();
        int endIndex = request.getEndIndex();
        synchronized (x0Var) {
            TextClassification.Builder builder = new TextClassification.Builder();
            if (x0Var.f2520c.l(x0Var.m)) {
                StringBuilder sb = new StringBuilder(38);
                sb.append("Classify text: ");
                sb.append(startIndex);
                sb.append(",");
                sb.append(endIndex);
                c.b.a.b.a.a.a.a.c.y0.c.b(sb.toString());
                c.b.a.b.a.a.a.a.a.a.x c2 = x0Var.c(text, startIndex, endIndex);
                if (c2 != null) {
                    if (c2.l) {
                        builder.setEntityType("other", 0.8f);
                    }
                    x0Var.f2519b.post(new s0(x0Var, c2));
                }
                build = builder.setText(text.toString()).build();
            } else {
                build = builder.setText(text.toString()).build();
            }
        }
        return build;
    }

    @Override // android.view.textclassifier.TextClassifier
    public TextSelection suggestSelection(TextSelection.Request request) {
        TextSelection build;
        x0 x0Var = this.f2514a;
        CharSequence text = request.getText();
        int startIndex = request.getStartIndex();
        int endIndex = request.getEndIndex();
        synchronized (x0Var) {
            String valueOf = String.valueOf(text);
            StringBuilder sb = new StringBuilder(valueOf.length() + 41);
            sb.append("Text selection: ");
            sb.append(valueOf);
            sb.append(": ");
            sb.append(startIndex);
            sb.append(",");
            sb.append(endIndex);
            c.b.a.b.a.a.a.a.c.y0.c.b(sb.toString());
            c.b.a.b.a.a.a.a.a.a.x e = x0Var.e(0);
            if (e != null) {
                TextSelection.Builder builder = new TextSelection.Builder(startIndex, endIndex);
                if (e.l) {
                    builder.setEntityType("other", 0.8f);
                }
                build = builder.build();
            } else {
                build = new TextSelection.Builder(startIndex, endIndex).build();
            }
        }
        return build;
    }
}
