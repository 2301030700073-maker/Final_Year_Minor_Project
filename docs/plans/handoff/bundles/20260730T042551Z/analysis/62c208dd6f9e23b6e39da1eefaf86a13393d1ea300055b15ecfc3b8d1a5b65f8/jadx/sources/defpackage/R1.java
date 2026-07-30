package defpackage;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class R1 {

    /* renamed from: do, reason: not valid java name */
    public TextClassifier f3093do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextView f3094do;

    /* renamed from: R1$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static TextClassifier m2010do(TextView textView) {
            Object systemService;
            TextClassifier textClassifier;
            TextClassifier textClassifier2;
            systemService = textView.getContext().getSystemService((Class<Object>) TextClassificationManager.class);
            TextClassificationManager textClassificationManager = (TextClassificationManager) systemService;
            if (textClassificationManager != null) {
                textClassifier2 = textClassificationManager.getTextClassifier();
                return textClassifier2;
            }
            textClassifier = TextClassifier.NO_OP;
            return textClassifier;
        }
    }

    public R1(TextView textView) {
        textView.getClass();
        this.f3094do = textView;
    }
}
