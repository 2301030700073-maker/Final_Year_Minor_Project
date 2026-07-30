package b.e.i;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;

/* loaded from: classes.dex */
public class A extends z {
    public A(D d2, WindowInsets windowInsets) {
        super(d2, windowInsets);
    }

    @Override // b.e.i.C
    public D a() {
        return D.h(this.f787b.consumeDisplayCutout());
    }

    @Override // b.e.i.C
    public C0090d d() {
        DisplayCutout displayCutout = this.f787b.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new C0090d(displayCutout);
    }

    @Override // b.e.i.C
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof A) {
            return Objects.equals(this.f787b, ((A) obj).f787b);
        }
        return false;
    }

    @Override // b.e.i.C
    public int hashCode() {
        return this.f787b.hashCode();
    }
}
