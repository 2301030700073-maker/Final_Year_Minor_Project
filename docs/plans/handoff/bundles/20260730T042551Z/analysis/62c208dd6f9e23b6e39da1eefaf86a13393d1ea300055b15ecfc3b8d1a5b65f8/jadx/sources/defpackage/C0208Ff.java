package defpackage;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.emoji2.text.Cnew;
import java.lang.ref.WeakReference;

/* renamed from: Ff, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0208Ff implements InputFilter {

    /* renamed from: do, reason: not valid java name */
    public Cdo f1077do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextView f1078do;

    /* renamed from: Ff$do, reason: invalid class name */
    public static class Cdo extends Cnew.Ctry {

        /* renamed from: do, reason: not valid java name */
        public final WeakReference f1079do;

        /* renamed from: if, reason: not valid java name */
        public final WeakReference f1080if;

        public Cdo(TextView textView, C0208Ff c0208Ff) {
            this.f1079do = new WeakReference(textView);
            this.f1080if = new WeakReference(c0208Ff);
        }

        @Override // androidx.emoji2.text.Cnew.Ctry
        /* renamed from: if, reason: not valid java name */
        public final void mo629if() {
            boolean z;
            int length;
            InputFilter[] filters;
            TextView textView = (TextView) this.f1079do.get();
            InputFilter inputFilter = (InputFilter) this.f1080if.get();
            if (inputFilter != null && textView != null && (filters = textView.getFilters()) != null) {
                for (InputFilter inputFilter2 : filters) {
                    if (inputFilter2 == inputFilter) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (z && textView.isAttachedToWindow()) {
                CharSequence text = textView.getText();
                Cnew m4104do = Cnew.m4104do();
                if (text == null) {
                    length = 0;
                } else {
                    m4104do.getClass();
                    length = text.length();
                }
                CharSequence m4105case = m4104do.m4105case(0, length, text);
                if (text == m4105case) {
                    return;
                }
                int selectionStart = Selection.getSelectionStart(m4105case);
                int selectionEnd = Selection.getSelectionEnd(m4105case);
                textView.setText(m4105case);
                if (m4105case instanceof Spannable) {
                    Spannable spannable = (Spannable) m4105case;
                    if (selectionStart >= 0 && selectionEnd >= 0) {
                        Selection.setSelection(spannable, selectionStart, selectionEnd);
                    } else if (selectionStart >= 0) {
                        Selection.setSelection(spannable, selectionStart);
                    } else if (selectionEnd >= 0) {
                        Selection.setSelection(spannable, selectionEnd);
                    }
                }
            }
        }
    }

    public C0208Ff(TextView textView) {
        this.f1078do = textView;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        TextView textView = this.f1078do;
        if (textView.isInEditMode()) {
            return charSequence;
        }
        int m4108if = Cnew.m4104do().m4108if();
        if (m4108if != 0) {
            boolean z = true;
            if (m4108if == 1) {
                if (i4 == 0 && i3 == 0 && spanned.length() == 0 && charSequence == textView.getText()) {
                    z = false;
                }
                if (!z || charSequence == null) {
                    return charSequence;
                }
                if (i != 0 || i2 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i, i2);
                }
                return Cnew.m4104do().m4105case(0, charSequence.length(), charSequence);
            }
            if (m4108if != 3) {
                return charSequence;
            }
        }
        Cnew m4104do = Cnew.m4104do();
        if (this.f1077do == null) {
            this.f1077do = new Cdo(textView, this);
        }
        m4104do.m4106else(this.f1077do);
        return charSequence;
    }
}
