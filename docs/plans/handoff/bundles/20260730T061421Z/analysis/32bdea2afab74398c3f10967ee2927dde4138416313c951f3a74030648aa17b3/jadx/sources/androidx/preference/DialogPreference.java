package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import b.e.b.d;
import b.l.O;
import b.l.X;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public abstract class DialogPreference extends Preference {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f143a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f144b;

    /* renamed from: c, reason: collision with root package name */
    public Drawable f145c;

    /* renamed from: d, reason: collision with root package name */
    public CharSequence f146d;
    public CharSequence e;
    public int f;

    public DialogPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, X.f1051c, i, i2);
        String m = d.m(obtainStyledAttributes, 9, 0);
        this.f143a = m;
        if (m == null) {
            this.f143a = this.mTitle;
        }
        String string = obtainStyledAttributes.getString(8);
        this.f144b = string == null ? obtainStyledAttributes.getString(1) : string;
        Drawable drawable = obtainStyledAttributes.getDrawable(6);
        this.f145c = drawable == null ? obtainStyledAttributes.getDrawable(2) : drawable;
        String string2 = obtainStyledAttributes.getString(11);
        this.f146d = string2 == null ? obtainStyledAttributes.getString(3) : string2;
        String string3 = obtainStyledAttributes.getString(10);
        this.e = string3 == null ? obtainStyledAttributes.getString(4) : string3;
        this.f = obtainStyledAttributes.getResourceId(7, obtainStyledAttributes.getResourceId(5, 0));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public void onClick() {
        O o = this.mPreferenceManager.j;
        if (o != null) {
            o.onDisplayPreferenceDialog(this);
        }
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.g(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle), 0);
    }
}
