package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.util.Base64;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.FirebaseCommonRegistrar;
import defpackage.C0577Wb;
import defpackage.C0774bq;
import defpackage.C2619dB;
import defpackage.C4075z4;
import java.util.ArrayList;

/* renamed from: h7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C2850h7 implements C2619dB.Cdo, C0774bq.Cdo, C0577Wb.Cdo, InterfaceC3146jI, NF {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ int f13254do;

    public /* synthetic */ C2850h7(int i) {
        this.f13254do = i;
    }

    @Override // defpackage.C2619dB.Cdo
    public final Object apply(Object obj) {
        switch (this.f13254do) {
            case 1:
                Cursor cursor = (Cursor) obj;
                C0823cg c0823cg = C2619dB.f12436do;
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    C4075z4.Cdo m8379do = AbstractC3794uI.m8379do();
                    m8379do.m8785if(cursor.getString(1));
                    m8379do.m8784for(Gx.m776if(cursor.getInt(2)));
                    String string = cursor.getString(3);
                    m8379do.f16859do = string == null ? null : Base64.decode(string, 0);
                    arrayList.add(m8379do.m8783do());
                }
                return arrayList;
            default:
                return ((Ew) obj).m6198import();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
    
        if (r0.equals("baseAddress") == false) goto L23;
     */
    @Override // defpackage.C0577Wb.Cdo
    /* renamed from: else */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo2065else(android.util.JsonReader r12) {
        /*
            r11 = this;
            lp r0 = defpackage.C0577Wb.f4389do
            r12.beginObject()
            r0 = 0
            r1 = 0
            r3 = 0
            r9 = r0
            r10 = r9
            r5 = r1
            r7 = r5
        Ld:
            boolean r0 = r12.hasNext()
            r1 = 3
            r2 = 2
            if (r0 == 0) goto L86
            java.lang.String r0 = r12.nextName()
            r0.getClass()
            int r4 = r0.hashCode()
            switch(r4) {
                case 3373707: goto L43;
                case 3530753: goto L38;
                case 3601339: goto L2d;
                case 1153765347: goto L24;
                default: goto L23;
            }
        L23:
            goto L4e
        L24:
            java.lang.String r4 = "baseAddress"
            boolean r0 = r0.equals(r4)
            if (r0 != 0) goto L4f
            goto L4e
        L2d:
            java.lang.String r1 = "uuid"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L36
            goto L4e
        L36:
            r1 = 2
            goto L4f
        L38:
            java.lang.String r1 = "size"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L41
            goto L4e
        L41:
            r1 = 1
            goto L4f
        L43:
            java.lang.String r1 = "name"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L4c
            goto L4e
        L4c:
            r1 = 0
            goto L4f
        L4e:
            r1 = -1
        L4f:
            switch(r1) {
                case 0: goto L77;
                case 1: goto L6e;
                case 2: goto L5e;
                case 3: goto L56;
                default: goto L52;
            }
        L52:
            r12.skipValue()
            goto Ld
        L56:
            long r0 = r12.nextLong()
            r2 = r3 | 1
            r5 = r0
            goto L75
        L5e:
            java.lang.String r0 = r12.nextString()
            byte[] r0 = android.util.Base64.decode(r0, r2)
            java.lang.String r10 = new java.lang.String
            java.nio.charset.Charset r1 = defpackage.AbstractC0533Ub.f3933do
            r10.<init>(r0, r1)
            goto Ld
        L6e:
            long r0 = r12.nextLong()
            r2 = r3 | 2
            r7 = r0
        L75:
            byte r3 = (byte) r2
            goto Ld
        L77:
            java.lang.String r9 = r12.nextString()
            if (r9 == 0) goto L7e
            goto Ld
        L7e:
            java.lang.NullPointerException r12 = new java.lang.NullPointerException
            java.lang.String r0 = "Null name"
            r12.<init>(r0)
            throw r12
        L86:
            r12.endObject()
            if (r3 != r1) goto L95
            if (r9 != 0) goto L8e
            goto L95
        L8e:
            H3 r12 = new H3
            r4 = r12
            r4.<init>(r5, r7, r9, r10)
            return r12
        L95:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            r0 = r3 & 1
            if (r0 != 0) goto La3
            java.lang.String r0 = " baseAddress"
            r12.append(r0)
        La3:
            r0 = r3 & 2
            if (r0 != 0) goto Lac
            java.lang.String r0 = " size"
            r12.append(r0)
        Lac:
            if (r9 != 0) goto Lb3
            java.lang.String r0 = " name"
            r12.append(r0)
        Lb3:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Missing required properties:"
            java.lang.String r12 = defpackage.V1.m2502goto(r1, r12)
            r0.<init>(r12)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2850h7.mo2065else(android.util.JsonReader):java.lang.Object");
    }

    @Override // defpackage.C0774bq.Cdo
    /* renamed from: if */
    public final String mo2067if(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? FirebaseCommonRegistrar.m6070do(installerPackageName) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // defpackage.NF
    public final FG then(Object obj) {
        return LG.m1320try(null);
    }
}
