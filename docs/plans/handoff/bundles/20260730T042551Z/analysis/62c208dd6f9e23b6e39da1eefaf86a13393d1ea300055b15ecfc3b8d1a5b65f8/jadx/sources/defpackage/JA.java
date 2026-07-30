package defpackage;

import android.text.Spannable;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.nativead.NativeAd;
import com.joeykrim.rootcheck.R;
import defpackage.C3128j0;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.function.IntSupplier;

/* loaded from: classes3.dex */
public final class JA extends RecyclerView.Ctry<RecyclerView.Cdefault> implements C3128j0.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final C3128j0.Cfor f1600do = new C3128j0.Cfor(new IntSupplier() { // from class: IA
        @Override // java.util.function.IntSupplier
        public final int getAsInt() {
            return JA.this.f1601do.size();
        }
    });

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<C0735bA> f1601do;

    /* renamed from: JA$do, reason: invalid class name */
    public static class Cdo extends RecyclerView.Cdefault {

        /* renamed from: case, reason: not valid java name */
        public final TextView f1602case;

        /* renamed from: do, reason: not valid java name */
        public final ImageView f1603do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final TextView f1604do;

        /* renamed from: for, reason: not valid java name */
        public final TextView f1605for;

        /* renamed from: if, reason: not valid java name */
        public final TextView f1606if;

        /* renamed from: new, reason: not valid java name */
        public final TextView f1607new;

        /* renamed from: try, reason: not valid java name */
        public final TextView f1608try;

        public Cdo(View view) {
            super(view);
            this.f1603do = (ImageView) view.findViewById(R.id.resultImage);
            this.f1604do = (TextView) view.findViewById(R.id.resultDateTime);
            this.f1606if = (TextView) view.findViewById(R.id.resultStatus);
            this.f1605for = (TextView) view.findViewById(R.id.resultDetails);
            this.f1607new = (TextView) view.findViewById(R.id.resultDuration);
            this.f1608try = (TextView) view.findViewById(R.id.resultDeviceType);
            this.f1602case = (TextView) view.findViewById(R.id.resultAndroidVersion);
        }
    }

    public JA(ArrayList arrayList) {
        this.f1601do = arrayList;
        m4465const();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: break, reason: not valid java name */
    public final void mo1020break() {
        this.f1600do.m7024for(this);
    }

    @Override // defpackage.C3128j0.Cdo
    /* renamed from: do, reason: not valid java name */
    public final int mo1021do() {
        return this.f1600do.f13620do.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: else, reason: not valid java name */
    public final void mo1022else() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: for, reason: not valid java name */
    public final int mo1023for() {
        return this.f1600do.m7027try() + this.f1601do.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: goto, reason: not valid java name */
    public final void mo1024goto(RecyclerView.Cdefault cdefault, int i) {
        C3128j0.Cfor cfor = this.f1600do;
        int m7023do = cfor.m7023do(i);
        if (m7023do >= 0) {
            C3128j0.m7017do((C3128j0.Cnew) cdefault, (NativeAd) cfor.f13620do.get(m7023do));
            return;
        }
        Cdo cdo = (Cdo) cdefault;
        int m7026new = cfor.m7026new(i);
        if (C0420Ou.f2680do != null && m7026new >= 0) {
            List<C0735bA> list = this.f1601do;
            if (m7026new >= list.size()) {
                return;
            }
            String str = C0420Ou.f2680do.getString(R.string.resultsHistoryDateTime) + " " + new SimpleDateFormat().format(list.get(m7026new).f8334do);
            TextView textView = cdo.f1604do;
            textView.setText(str);
            try {
                ((Spannable) textView.getText()).setSpan(new UnderlineSpan(), 0, C0420Ou.f2680do.getString(R.string.resultsHistoryDateTime).length() - 1, 33);
            } catch (IndexOutOfBoundsException unused) {
            }
            StringBuilder sb = new StringBuilder();
            sb.append(C0420Ou.f2680do.getString(R.string.resultsHistoryStatus));
            sb.append(" ");
            sb.append(list.get(m7026new).f8335do ? C0420Ou.f2680do.getString(R.string.resultsHistoryStatusYes) : C0420Ou.f2680do.getString(R.string.resultsHistoryStatusNo));
            String sb2 = sb.toString();
            TextView textView2 = cdo.f1606if;
            textView2.setText(sb2);
            try {
                ((Spannable) textView2.getText()).setSpan(new UnderlineSpan(), 0, C0420Ou.f2680do.getString(R.string.resultsHistoryStatus).length() - 1, 33);
            } catch (IndexOutOfBoundsException unused2) {
            }
            boolean z = list.get(m7026new).f8335do;
            ImageView imageView = cdo.f1603do;
            if (z) {
                imageView.setImageResource(R.drawable.root_status_yes);
            } else {
                imageView.setImageResource(R.drawable.root_status_no);
            }
            int i2 = list.get(m7026new).f8336for;
            TextView textView3 = cdo.f1607new;
            if (i2 <= -1) {
                textView3.setVisibility(8);
            } else {
                textView3.setVisibility(0);
            }
            if (list.get(m7026new).f8336for == 0) {
                textView3.setText(C0420Ou.f2680do.getString(R.string.resultsHistoryDuration) + " <1 sec");
            } else if (list.get(m7026new).f8336for == 1) {
                textView3.setText(C0420Ou.f2680do.getString(R.string.resultsHistoryDuration) + " 1 sec");
            } else {
                textView3.setText(C0420Ou.f2680do.getString(R.string.resultsHistoryDuration) + " " + Integer.toString(list.get(m7026new).f8336for) + " secs");
            }
            try {
                ((Spannable) textView3.getText()).setSpan(new UnderlineSpan(), 0, C0420Ou.f2680do.getString(R.string.resultsHistoryDuration).length() - 1, 33);
            } catch (IndexOutOfBoundsException unused3) {
            }
            boolean isEmpty = list.get(m7026new).f8332catch.isEmpty();
            TextView textView4 = cdo.f1608try;
            if (isEmpty) {
                textView4.setVisibility(8);
            } else {
                textView4.setText(C0420Ou.f2680do.getString(R.string.resultsHistoryDeviceType) + " " + list.get(m7026new).f8332catch);
                try {
                    ((Spannable) textView4.getText()).setSpan(new UnderlineSpan(), 0, C0420Ou.f2680do.getString(R.string.resultsHistoryDeviceType).length() - 1, 33);
                } catch (IndexOutOfBoundsException unused4) {
                }
                textView4.setVisibility(0);
            }
            boolean isEmpty2 = list.get(m7026new).f8333class.isEmpty();
            TextView textView5 = cdo.f1602case;
            if (isEmpty2) {
                textView5.setVisibility(8);
            } else {
                textView5.setText(C0420Ou.f2680do.getString(R.string.resultsHistoryAndroidVersion) + " " + list.get(m7026new).f8333class);
                try {
                    ((Spannable) textView5.getText()).setSpan(new UnderlineSpan(), 0, C0420Ou.f2680do.getString(R.string.resultsHistoryAndroidVersion).length() - 1, 33);
                } catch (IndexOutOfBoundsException unused5) {
                }
                textView5.setVisibility(0);
            }
            boolean isEmpty3 = list.get(m7026new).f8331break.isEmpty();
            TextView textView6 = cdo.f1605for;
            if (isEmpty3 || C0420Ou.f2678do != 1) {
                textView6.setVisibility(8);
                return;
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(list.get(m7026new).f8336for <= -1 ? System.getProperty("line.separator") : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            sb3.append(C0420Ou.f2680do.getString(R.string.resultsHistoryDetails));
            sb3.append(" ");
            sb3.append(list.get(m7026new).f8331break);
            textView6.setText(sb3.toString());
            try {
                ((Spannable) textView6.getText()).setSpan(new UnderlineSpan(), 0, C0420Ou.f2680do.getString(R.string.resultsHistoryDetails).length() - 1, 33);
            } catch (IndexOutOfBoundsException unused6) {
            }
            textView6.setVisibility(0);
        }
    }

    @Override // defpackage.C3128j0.Cdo
    /* renamed from: if, reason: not valid java name */
    public final void mo1025if(List<NativeAd> list) {
        this.f1600do.m7025if(this, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: new, reason: not valid java name */
    public final long mo1026new(int i) {
        C3128j0.Cfor cfor = this.f1600do;
        int m7023do = cfor.m7023do(i);
        if (m7023do >= 0) {
            return m7023do - Long.MIN_VALUE;
        }
        int m7026new = cfor.m7026new(i);
        if (m7026new < 0) {
            return -1L;
        }
        List<C0735bA> list = this.f1601do;
        if (m7026new >= list.size()) {
            return -1L;
        }
        Long l = list.get(m7026new).f8334do;
        return l != null ? l.longValue() : m7026new;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: this, reason: not valid java name */
    public final RecyclerView.Cdefault mo1027this(RecyclerView recyclerView, int i) {
        if (i != 99) {
            return new Cdo(Cpublic.m7826new(recyclerView, R.layout.rcp_nv_roothistoryitem, recyclerView, false));
        }
        int i2 = C3128j0.Cnew.f13622this;
        return new C3128j0.Cnew(Cpublic.m7826new(recyclerView, R.layout.item_native_ad, recyclerView, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ctry
    /* renamed from: try, reason: not valid java name */
    public final int mo1028try(int i) {
        return this.f1600do.m7023do(i) >= 0 ? 99 : 0;
    }
}
