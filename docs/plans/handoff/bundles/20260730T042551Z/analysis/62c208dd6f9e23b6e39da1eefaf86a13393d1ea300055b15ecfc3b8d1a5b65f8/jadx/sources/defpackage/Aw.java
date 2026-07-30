package defpackage;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.textfield.Cdo;
import com.joeykrim.rootcheck.R;

/* loaded from: classes3.dex */
public final class Aw extends AbstractC2704eg {

    /* renamed from: do, reason: not valid java name */
    public final int f169do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EditText f170do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ViewOnClickListenerC2823gh f171do;

    public Aw(Cdo cdo, int i) {
        super(cdo);
        this.f169do = R.drawable.design_password_eye;
        this.f171do = new ViewOnClickListenerC2823gh(this, 3);
        if (i != 0) {
            this.f169do = i;
        }
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: case, reason: not valid java name */
    public final View.OnClickListener mo121case() {
        return this.f171do;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: catch, reason: not valid java name */
    public final boolean mo122catch() {
        return true;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: class, reason: not valid java name */
    public final boolean mo123class() {
        EditText editText = this.f170do;
        return !(editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod));
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: const, reason: not valid java name */
    public final void mo124const(EditText editText) {
        this.f170do = editText;
        m6574while();
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: for, reason: not valid java name */
    public final int mo125for() {
        return R.string.password_toggle_content_description;
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: if, reason: not valid java name */
    public final void mo126if() {
        m6574while();
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: import, reason: not valid java name */
    public final void mo127import() {
        EditText editText = this.f170do;
        if (editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224)) {
            this.f170do.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: native, reason: not valid java name */
    public final void mo128native() {
        EditText editText = this.f170do;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    @Override // defpackage.AbstractC2704eg
    /* renamed from: new, reason: not valid java name */
    public final int mo129new() {
        return this.f169do;
    }
}
