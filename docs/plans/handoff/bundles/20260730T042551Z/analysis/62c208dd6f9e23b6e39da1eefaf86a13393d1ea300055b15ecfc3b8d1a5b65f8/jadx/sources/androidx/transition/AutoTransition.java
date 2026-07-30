package androidx.transition;

import android.content.Context;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class AutoTransition extends TransitionSet {
    public AutoTransition() {
        b();
    }

    public final void b() {
        a(1);
        m4654implements(new Fade(2));
        m4654implements(new ChangeBounds());
        m4654implements(new Fade(1));
    }

    public AutoTransition(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b();
    }
}
