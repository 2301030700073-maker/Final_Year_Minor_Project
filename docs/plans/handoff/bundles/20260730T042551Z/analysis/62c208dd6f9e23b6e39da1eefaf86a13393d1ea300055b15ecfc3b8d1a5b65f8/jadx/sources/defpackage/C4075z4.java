package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.AbstractC3794uI;
import java.util.Arrays;

/* renamed from: z4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4075z4 extends AbstractC3794uI {

    /* renamed from: do, reason: not valid java name */
    public final Ex f16854do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16855do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f16856do;

    /* renamed from: z4$do, reason: invalid class name */
    public static final class Cdo extends AbstractC3794uI.Cdo {

        /* renamed from: do, reason: not valid java name */
        public Ex f16857do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f16858do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public byte[] f16859do;

        /* renamed from: do, reason: not valid java name */
        public final C4075z4 m8783do() {
            String str = this.f16858do == null ? " backendName" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (this.f16857do == null) {
                str = str.concat(" priority");
            }
            if (str.isEmpty()) {
                return new C4075z4(this.f16858do, this.f16859do, this.f16857do);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        /* renamed from: for, reason: not valid java name */
        public final Cdo m8784for(Ex ex) {
            if (ex == null) {
                throw new NullPointerException("Null priority");
            }
            this.f16857do = ex;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public final Cdo m8785if(String str) {
            if (str == null) {
                throw new NullPointerException("Null backendName");
            }
            this.f16858do = str;
            return this;
        }
    }

    public C4075z4(String str, byte[] bArr, Ex ex) {
        this.f16855do = str;
        this.f16856do = bArr;
        this.f16854do = ex;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3794uI)) {
            return false;
        }
        AbstractC3794uI abstractC3794uI = (AbstractC3794uI) obj;
        if (this.f16855do.equals(abstractC3794uI.mo8381if())) {
            if (Arrays.equals(this.f16856do, abstractC3794uI instanceof C4075z4 ? ((C4075z4) abstractC3794uI).f16856do : abstractC3794uI.mo8380for()) && this.f16854do.equals(abstractC3794uI.mo8382new())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC3794uI
    /* renamed from: for */
    public final byte[] mo8380for() {
        return this.f16856do;
    }

    public final int hashCode() {
        return ((((this.f16855do.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f16856do)) * 1000003) ^ this.f16854do.hashCode();
    }

    @Override // defpackage.AbstractC3794uI
    /* renamed from: if */
    public final String mo8381if() {
        return this.f16855do;
    }

    @Override // defpackage.AbstractC3794uI
    /* renamed from: new */
    public final Ex mo8382new() {
        return this.f16854do;
    }
}
