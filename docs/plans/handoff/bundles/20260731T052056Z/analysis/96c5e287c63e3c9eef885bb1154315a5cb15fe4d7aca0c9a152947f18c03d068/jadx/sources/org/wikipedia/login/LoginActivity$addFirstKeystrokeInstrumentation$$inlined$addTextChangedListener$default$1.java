package org.wikipedia.login;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.LinkedHashMap;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.createaccount.CreateAccountActivity;
import org.wikipedia.extensions.ContextKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1 implements TextWatcher {
    public final /* synthetic */ String $elementId$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ EditText $view$inlined;
    public final /* synthetic */ BaseActivity this$0;

    public /* synthetic */ LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(BaseActivity baseActivity, EditText editText, String str, int i) {
        this.$r8$classId = i;
        this.this$0 = baseActivity;
        this.$view$inlined = editText;
        this.$elementId$inlined = str;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        int i = this.$r8$classId;
        BaseActivity baseActivity = this.this$0;
        EditText editText = this.$view$inlined;
        switch (i) {
            case 0:
                LoginActivity loginActivity = (LoginActivity) baseActivity;
                LinkedHashMap linkedHashMap = loginActivity.textEnteredEventSent;
                if (editable != null && editable.length() != 0) {
                    Boolean bool = (Boolean) linkedHashMap.get(editText);
                    if (!(bool != null ? bool.booleanValue() : false)) {
                        SVGAndroidRenderer instrument = ContextKt.getInstrument(loginActivity);
                        if (instrument != null) {
                            SVGAndroidRenderer.submitInteraction$default(instrument, "type", null, null, this.$elementId$inlined, null, null, 246);
                        }
                        linkedHashMap.put(editText, Boolean.TRUE);
                        break;
                    }
                }
                break;
            default:
                CreateAccountActivity createAccountActivity = (CreateAccountActivity) baseActivity;
                LinkedHashMap linkedHashMap2 = createAccountActivity.textEnteredEventSent;
                if (editable != null && editable.length() != 0) {
                    Boolean bool2 = (Boolean) linkedHashMap2.get(editText);
                    if (!(bool2 != null ? bool2.booleanValue() : false)) {
                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(createAccountActivity);
                        if (instrument2 != null) {
                            SVGAndroidRenderer.submitInteraction$default(instrument2, "type", null, null, this.$elementId$inlined, null, null, 246);
                        }
                        linkedHashMap2.put(editText, Boolean.TRUE);
                        break;
                    }
                }
                break;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.$r8$classId;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        int i4 = this.$r8$classId;
    }

    private final void beforeTextChanged$org$wikipedia$createaccount$CreateAccountActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void beforeTextChanged$org$wikipedia$login$LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void onTextChanged$org$wikipedia$createaccount$CreateAccountActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(int i, int i2, int i3, CharSequence charSequence) {
    }

    private final void onTextChanged$org$wikipedia$login$LoginActivity$addFirstKeystrokeInstrumentation$$inlined$addTextChangedListener$default$1(int i, int i2, int i3, CharSequence charSequence) {
    }
}
