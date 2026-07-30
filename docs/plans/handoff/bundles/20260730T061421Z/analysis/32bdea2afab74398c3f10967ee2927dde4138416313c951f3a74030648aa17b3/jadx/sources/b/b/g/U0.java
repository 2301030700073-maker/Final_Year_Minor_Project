package b.b.g;

import android.util.Property;
import androidx.appcompat.widget.SwitchCompat;

/* loaded from: classes.dex */
public class U0 extends Property {
    public U0(Class cls, String str) {
        super(cls, str);
    }

    @Override // android.util.Property
    public Object get(Object obj) {
        return Float.valueOf(((SwitchCompat) obj).x);
    }

    @Override // android.util.Property
    public void set(Object obj, Object obj2) {
        SwitchCompat switchCompat = (SwitchCompat) obj;
        switchCompat.x = ((Float) obj2).floatValue();
        switchCompat.invalidate();
    }
}
