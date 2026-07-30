package defpackage;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.emoji2.text.Cnew;

/* renamed from: Jf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0296Jf {

    /* renamed from: do, reason: not valid java name */
    public final Cif f1660do;

    /* renamed from: Jf$do, reason: invalid class name */
    public static class Cdo extends Cif {

        /* renamed from: do, reason: not valid java name */
        public final C0208Ff f1661do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final TextView f1662do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f1663do = true;

        public Cdo(TextView textView) {
            this.f1662do = textView;
            this.f1661do = new C0208Ff(textView);
        }

        @Override // defpackage.C0296Jf.Cif
        /* renamed from: do, reason: not valid java name */
        public final InputFilter[] mo1041do(InputFilter[] inputFilterArr) {
            if (!this.f1663do) {
                SparseArray sparseArray = new SparseArray(1);
                for (int i = 0; i < inputFilterArr.length; i++) {
                    InputFilter inputFilter = inputFilterArr[i];
                    if (inputFilter instanceof C0208Ff) {
                        sparseArray.put(i, inputFilter);
                    }
                }
                if (sparseArray.size() == 0) {
                    return inputFilterArr;
                }
                int length = inputFilterArr.length;
                InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
                int i2 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    if (sparseArray.indexOfKey(i3) < 0) {
                        inputFilterArr2[i2] = inputFilterArr[i3];
                        i2++;
                    }
                }
                return inputFilterArr2;
            }
            int length2 = inputFilterArr.length;
            int i4 = 0;
            while (true) {
                C0208Ff c0208Ff = this.f1661do;
                if (i4 >= length2) {
                    InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                    System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                    inputFilterArr3[length2] = c0208Ff;
                    return inputFilterArr3;
                }
                if (inputFilterArr[i4] == c0208Ff) {
                    return inputFilterArr;
                }
                i4++;
            }
        }

        @Override // defpackage.C0296Jf.Cif
        /* renamed from: for, reason: not valid java name */
        public final void mo1042for(boolean z) {
            if (z) {
                TextView textView = this.f1662do;
                textView.setTransformationMethod(mo1045try(textView.getTransformationMethod()));
            }
        }

        @Override // defpackage.C0296Jf.Cif
        /* renamed from: if, reason: not valid java name */
        public final boolean mo1043if() {
            return this.f1663do;
        }

        @Override // defpackage.C0296Jf.Cif
        /* renamed from: new, reason: not valid java name */
        public final void mo1044new(boolean z) {
            this.f1663do = z;
            TextView textView = this.f1662do;
            textView.setTransformationMethod(mo1045try(textView.getTransformationMethod()));
            textView.setFilters(mo1041do(textView.getFilters()));
        }

        @Override // defpackage.C0296Jf.Cif
        /* renamed from: try, reason: not valid java name */
        public final TransformationMethod mo1045try(TransformationMethod transformationMethod) {
            return this.f1663do ? ((transformationMethod instanceof C0340Lf) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new C0340Lf(transformationMethod) : transformationMethod instanceof C0340Lf ? ((C0340Lf) transformationMethod).f1974do : transformationMethod;
        }
    }

    /* renamed from: Jf$for, reason: invalid class name */
    public static class Cfor extends Cif {

        /* renamed from: do, reason: not valid java name */
        public final Cdo f1664do;

        public Cfor(TextView textView) {
            this.f1664do = new Cdo(textView);
        }

        @Override // defpackage.C0296Jf.Cif
        /* renamed from: do */
        public final InputFilter[] mo1041do(InputFilter[] inputFilterArr) {
            return (Cnew.f6776do != null) ^ true ? inputFilterArr : this.f1664do.mo1041do(inputFilterArr);
        }

        @Override // defpackage.C0296Jf.Cif
        /* renamed from: for */
        public final void mo1042for(boolean z) {
            if (!(Cnew.f6776do != null)) {
                return;
            }
            this.f1664do.mo1042for(z);
        }

        @Override // defpackage.C0296Jf.Cif
        /* renamed from: if */
        public final boolean mo1043if() {
            return this.f1664do.f1663do;
        }

        @Override // defpackage.C0296Jf.Cif
        /* renamed from: new */
        public final void mo1044new(boolean z) {
            boolean z2 = !(Cnew.f6776do != null);
            Cdo cdo = this.f1664do;
            if (z2) {
                cdo.f1663do = z;
            } else {
                cdo.mo1044new(z);
            }
        }

        @Override // defpackage.C0296Jf.Cif
        /* renamed from: try */
        public final TransformationMethod mo1045try(TransformationMethod transformationMethod) {
            return (Cnew.f6776do != null) ^ true ? transformationMethod : this.f1664do.mo1045try(transformationMethod);
        }
    }

    /* renamed from: Jf$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do */
        public InputFilter[] mo1041do(InputFilter[] inputFilterArr) {
            throw null;
        }

        /* renamed from: for */
        public void mo1042for(boolean z) {
            throw null;
        }

        /* renamed from: if */
        public boolean mo1043if() {
            throw null;
        }

        /* renamed from: new */
        public void mo1044new(boolean z) {
            throw null;
        }

        /* renamed from: try */
        public TransformationMethod mo1045try(TransformationMethod transformationMethod) {
            throw null;
        }
    }

    public C0296Jf(TextView textView) {
        if (textView == null) {
            throw new NullPointerException("textView cannot be null");
        }
        this.f1660do = new Cfor(textView);
    }
}
