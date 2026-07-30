package defpackage;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import android.widget.TextView;
import androidx.emoji2.text.Cnew;

/* renamed from: Ef, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0186Ef extends InputConnectionWrapper {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f872do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextView f873do;

    /* renamed from: Ef$do, reason: invalid class name */
    public static class Cdo {
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0050, code lost:
        
            if (java.lang.Character.isHighSurrogate(r5) != false) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x008d, code lost:
        
            if (java.lang.Character.isLowSurrogate(r5) != false) goto L64;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0080, code lost:
        
            if (r11 != false) goto L72;
         */
        /* renamed from: do, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean m490do(android.view.inputmethod.InputConnection r7, android.text.Editable r8, int r9, int r10, boolean r11) {
            /*
                Method dump skipped, instructions count: 252
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0186Ef.Cdo.m490do(android.view.inputmethod.InputConnection, android.text.Editable, int, int, boolean):boolean");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0186Ef(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        super(inputConnection, false);
        Cdo cdo = new Cdo();
        this.f873do = editText;
        this.f872do = cdo;
        if (Cnew.f6776do != null) {
            Cnew m4104do = Cnew.m4104do();
            if (!(m4104do.m4108if() == 1) || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            Cnew.Cdo cdo2 = m4104do.f6782do;
            cdo2.getClass();
            Bundle bundle = editorInfo.extras;
            C2658dt c2658dt = cdo2.f6789do.f6770do;
            int m255do = c2658dt.m255do(4);
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", m255do != 0 ? ((CG) c2658dt).f348do.getInt(m255do + ((CG) c2658dt).f347do) : 0);
            Bundle bundle2 = editorInfo.extras;
            ((Cnew.Cif) cdo2).f6793do.getClass();
            bundle2.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i, int i2) {
        Editable editableText = this.f873do.getEditableText();
        this.f872do.getClass();
        return Cdo.m490do(this, editableText, i, i2, false) || super.deleteSurroundingText(i, i2);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        Editable editableText = this.f873do.getEditableText();
        this.f872do.getClass();
        return Cdo.m490do(this, editableText, i, i2, true) || super.deleteSurroundingTextInCodePoints(i, i2);
    }
}
