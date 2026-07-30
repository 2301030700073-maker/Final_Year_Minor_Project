package defpackage;

import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.Cnew;
import java.lang.ref.WeakReference;

/* renamed from: Kf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0318Kf implements TextWatcher {

    /* renamed from: do, reason: not valid java name */
    public Cdo f1849do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EditText f1850do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f1851do = false;

    /* renamed from: if, reason: not valid java name */
    public boolean f1852if = true;

    /* renamed from: Kf$do, reason: invalid class name */
    public static class Cdo extends Cnew.Ctry {

        /* renamed from: do, reason: not valid java name */
        public final WeakReference f1853do;

        public Cdo(EditText editText) {
            this.f1853do = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.Cnew.Ctry
        /* renamed from: if */
        public final void mo629if() {
            C0318Kf.m1187do((EditText) this.f1853do.get(), 1);
        }
    }

    public C0318Kf(EditText editText) {
        this.f1850do = editText;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1187do(EditText editText, int i) {
        int length;
        if (i == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            Cnew m4104do = Cnew.m4104do();
            if (editableText == null) {
                length = 0;
            } else {
                m4104do.getClass();
                length = editableText.length();
            }
            m4104do.m4105case(0, length, editableText);
            if (selectionStart >= 0 && selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionStart, selectionEnd);
            } else if (selectionStart >= 0) {
                Selection.setSelection(editableText, selectionStart);
            } else if (selectionEnd >= 0) {
                Selection.setSelection(editableText, selectionEnd);
            }
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
    
        if ((androidx.emoji2.text.Cnew.f6776do != null) == false) goto L13;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0048  */
    @Override // android.text.TextWatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onTextChanged(java.lang.CharSequence r5, int r6, int r7, int r8) {
        /*
            r4 = this;
            android.widget.EditText r0 = r4.f1850do
            boolean r1 = r0.isInEditMode()
            if (r1 != 0) goto L54
            boolean r1 = r4.f1852if
            r2 = 1
            if (r1 == 0) goto L1b
            boolean r1 = r4.f1851do
            r3 = 0
            if (r1 != 0) goto L1c
            androidx.emoji2.text.new r1 = androidx.emoji2.text.Cnew.f6776do
            if (r1 == 0) goto L18
            r1 = 1
            goto L19
        L18:
            r1 = 0
        L19:
            if (r1 != 0) goto L1c
        L1b:
            r3 = 1
        L1c:
            if (r3 == 0) goto L1f
            goto L54
        L1f:
            if (r7 > r8) goto L54
            boolean r7 = r5 instanceof android.text.Spannable
            if (r7 == 0) goto L54
            androidx.emoji2.text.new r7 = androidx.emoji2.text.Cnew.m4104do()
            int r7 = r7.m4108if()
            if (r7 == 0) goto L40
            if (r7 == r2) goto L35
            r5 = 3
            if (r7 == r5) goto L40
            goto L54
        L35:
            android.text.Spannable r5 = (android.text.Spannable) r5
            androidx.emoji2.text.new r7 = androidx.emoji2.text.Cnew.m4104do()
            int r8 = r8 + r6
            r7.m4105case(r6, r8, r5)
            goto L54
        L40:
            androidx.emoji2.text.new r5 = androidx.emoji2.text.Cnew.m4104do()
            Kf$do r6 = r4.f1849do
            if (r6 != 0) goto L4f
            Kf$do r6 = new Kf$do
            r6.<init>(r0)
            r4.f1849do = r6
        L4f:
            Kf$do r6 = r4.f1849do
            r5.m4106else(r6)
        L54:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0318Kf.onTextChanged(java.lang.CharSequence, int, int, int):void");
    }
}
