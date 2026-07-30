package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Locale;

/* renamed from: Na, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0378Na {

    /* renamed from: do, reason: not valid java name */
    public final Ctry f2398do;

    /* renamed from: Na$case, reason: invalid class name */
    public static final class Ccase implements Ctry {

        /* renamed from: do, reason: not valid java name */
        public final int f2399do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ClipData f2400do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Uri f2401do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Bundle f2402do;

        /* renamed from: if, reason: not valid java name */
        public final int f2403if;

        public Ccase(Cfor cfor) {
            ClipData clipData = cfor.f2406do;
            clipData.getClass();
            this.f2400do = clipData;
            int i = cfor.f2405do;
            if (i < 0) {
                throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", "source", 0, 5));
            }
            if (i > 5) {
                throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", "source", 0, 5));
            }
            this.f2399do = i;
            int i2 = cfor.f2409if;
            if ((i2 & 1) == i2) {
                this.f2403if = i2;
                this.f2401do = cfor.f2407do;
                this.f2402do = cfor.f2408do;
            } else {
                throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i2) + ", but only 0x" + Integer.toHexString(1) + " are allowed");
            }
        }

        @Override // defpackage.C0378Na.Ctry
        /* renamed from: do, reason: not valid java name */
        public final int mo1535do() {
            return this.f2399do;
        }

        @Override // defpackage.C0378Na.Ctry
        /* renamed from: for, reason: not valid java name */
        public final int mo1536for() {
            return this.f2403if;
        }

        @Override // defpackage.C0378Na.Ctry
        /* renamed from: if, reason: not valid java name */
        public final ContentInfo mo1537if() {
            return null;
        }

        @Override // defpackage.C0378Na.Ctry
        /* renamed from: new, reason: not valid java name */
        public final ClipData mo1538new() {
            return this.f2400do;
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
            sb.append(this.f2400do.getDescription());
            sb.append(", source=");
            int i = this.f2399do;
            sb.append(i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? String.valueOf(i) : "SOURCE_PROCESS_TEXT" : "SOURCE_AUTOFILL" : "SOURCE_DRAG_AND_DROP" : "SOURCE_INPUT_METHOD" : "SOURCE_CLIPBOARD" : "SOURCE_APP");
            sb.append(", flags=");
            int i2 = this.f2403if;
            sb.append((i2 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i2));
            String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            Uri uri = this.f2401do;
            if (uri == null) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                str = ", hasLinkUri(" + uri.toString().length() + ")";
            }
            sb.append(str);
            if (this.f2402do != null) {
                str2 = ", hasExtras";
            }
            return Creturn.m7984try(sb, str2, "}");
        }
    }

    /* renamed from: Na$do, reason: invalid class name */
    public static final class Cdo implements Cif {

        /* renamed from: do, reason: not valid java name */
        public final ContentInfo.Builder f2404do;

        public Cdo(ClipData clipData, int i) {
            this.f2404do = new ContentInfo.Builder(clipData, i);
        }

        @Override // defpackage.C0378Na.Cif
        /* renamed from: do, reason: not valid java name */
        public final void mo1539do(Uri uri) {
            this.f2404do.setLinkUri(uri);
        }

        @Override // defpackage.C0378Na.Cif
        /* renamed from: for, reason: not valid java name */
        public final C0378Na mo1540for() {
            ContentInfo build;
            build = this.f2404do.build();
            return new C0378Na(new Cnew(build));
        }

        @Override // defpackage.C0378Na.Cif
        /* renamed from: if, reason: not valid java name */
        public final void mo1541if(int i) {
            this.f2404do.setFlags(i);
        }

        @Override // defpackage.C0378Na.Cif
        public final void setExtras(Bundle bundle) {
            this.f2404do.setExtras(bundle);
        }
    }

    /* renamed from: Na$for, reason: invalid class name */
    public static final class Cfor implements Cif {

        /* renamed from: do, reason: not valid java name */
        public final int f2405do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ClipData f2406do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Uri f2407do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Bundle f2408do;

        /* renamed from: if, reason: not valid java name */
        public int f2409if;

        public Cfor(ClipData clipData, int i) {
            this.f2406do = clipData;
            this.f2405do = i;
        }

        @Override // defpackage.C0378Na.Cif
        /* renamed from: do */
        public final void mo1539do(Uri uri) {
            this.f2407do = uri;
        }

        @Override // defpackage.C0378Na.Cif
        /* renamed from: for */
        public final C0378Na mo1540for() {
            return new C0378Na(new Ccase(this));
        }

        @Override // defpackage.C0378Na.Cif
        /* renamed from: if */
        public final void mo1541if(int i) {
            this.f2409if = i;
        }

        @Override // defpackage.C0378Na.Cif
        public final void setExtras(Bundle bundle) {
            this.f2408do = bundle;
        }
    }

    /* renamed from: Na$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do */
        void mo1539do(Uri uri);

        /* renamed from: for */
        C0378Na mo1540for();

        /* renamed from: if */
        void mo1541if(int i);

        void setExtras(Bundle bundle);
    }

    /* renamed from: Na$new, reason: invalid class name */
    public static final class Cnew implements Ctry {

        /* renamed from: do, reason: not valid java name */
        public final ContentInfo f2410do;

        public Cnew(ContentInfo contentInfo) {
            contentInfo.getClass();
            this.f2410do = contentInfo;
        }

        @Override // defpackage.C0378Na.Ctry
        /* renamed from: do */
        public final int mo1535do() {
            int source;
            source = this.f2410do.getSource();
            return source;
        }

        @Override // defpackage.C0378Na.Ctry
        /* renamed from: for */
        public final int mo1536for() {
            int flags;
            flags = this.f2410do.getFlags();
            return flags;
        }

        @Override // defpackage.C0378Na.Ctry
        /* renamed from: if */
        public final ContentInfo mo1537if() {
            return this.f2410do;
        }

        @Override // defpackage.C0378Na.Ctry
        /* renamed from: new */
        public final ClipData mo1538new() {
            ClipData clip;
            clip = this.f2410do.getClip();
            return clip;
        }

        public final String toString() {
            return "ContentInfoCompat{" + this.f2410do + "}";
        }
    }

    /* renamed from: Na$try, reason: invalid class name */
    public interface Ctry {
        /* renamed from: do */
        int mo1535do();

        /* renamed from: for */
        int mo1536for();

        /* renamed from: if */
        ContentInfo mo1537if();

        /* renamed from: new */
        ClipData mo1538new();
    }

    public C0378Na(Ctry ctry) {
        this.f2398do = ctry;
    }

    public final String toString() {
        return this.f2398do.toString();
    }
}
