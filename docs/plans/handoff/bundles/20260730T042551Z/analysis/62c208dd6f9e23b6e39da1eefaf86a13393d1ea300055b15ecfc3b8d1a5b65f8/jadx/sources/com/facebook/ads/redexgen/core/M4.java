package com.facebook.ads.redexgen.core;

import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.locks.Lock;

/* loaded from: assets/audience_network.dex */
public class M4 extends AbstractC2318jx<String> {
    public static byte[] A08;
    public static String[] A09 = {"ZKW0rplATEIsE5gjt8qXTQnY", "r6HJdeSoORQdJfGxA0AnZWlkU33wQIlK", "lLZOtDHAe6uwMhK1fYaqg", "CFnqFcdcZfU1FaRsph1ThokBMpi4uqZk", "TONJvFd", "LRRDDC4", "oqOd7Km", "E"};
    public final /* synthetic */ double A00;
    public final /* synthetic */ double A01;
    public final /* synthetic */ int A02;
    public final /* synthetic */ C8E A03;
    public final /* synthetic */ String A04;
    public final /* synthetic */ String A05;
    public final /* synthetic */ String A06;
    public final /* synthetic */ Map A07;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 122);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        byte[] bArr = {56, 53, 72, 53, 54, 53, 71, 57};
        if (A09[2].length() == 32) {
            throw new RuntimeException();
        }
        A09[2] = "0lpDBp9tBU8jLddyd5eWZp";
        A08 = bArr;
    }

    static {
        A02();
    }

    public M4(C8E c8e, String str, String str2, int i, double d, double d2, String str3, Map map) {
        this.A03 = c8e;
        this.A06 = str;
        this.A05 = str2;
        this.A02 = i;
        this.A01 = d;
        this.A00 = d2;
        this.A04 = str3;
        this.A07 = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C8H
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final String A03() {
        C2321k0 c2321k0;
        Lock lock;
        Lock lock2;
        C2321k0 c2321k02;
        C2321k0 c2321k03;
        Lock lock3;
        C2321k0 c2321k04;
        C2320jz c2320jz;
        C2319jy c2319jy;
        Lock lock4;
        C2321k0 c2321k05;
        String eventId = A01(0, 8, 90);
        c2321k0 = this.A03.A01;
        c2321k0.A08().A9t(this.A06);
        if (TextUtils.isEmpty(this.A05)) {
            return null;
        }
        lock = C8E.A07;
        lock.lock();
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = this.A03.A0E();
                sQLiteDatabase.beginTransaction();
                c2320jz = this.A03.A02;
                c2319jy = this.A03.A03;
                String A0E = c2320jz.A0E(c2319jy.A0C(this.A05), this.A02, this.A06, this.A01, this.A00, this.A04, this.A07);
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Exception e) {
                        c2321k05 = this.A03.A01;
                        c2321k05.A08().AAu(eventId, AbstractC10358a.A0z, new C10368b(e));
                    }
                }
                lock4 = C8E.A07;
                lock4.unlock();
                return A0E;
            } catch (Exception e2) {
                A01(C8G.A05);
                c2321k03 = this.A03.A01;
                c2321k03.A08().AAu(eventId, AbstractC10358a.A0y, new C10368b(e2));
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Exception e3) {
                        c2321k04 = this.A03.A01;
                        c2321k04.A08().AAu(eventId, AbstractC10358a.A0z, new C10368b(e3));
                    }
                }
                lock3 = C8E.A07;
                lock3.unlock();
                return null;
            }
        } catch (Throwable th) {
            if (sQLiteDatabase != null) {
                boolean isOpen = sQLiteDatabase.isOpen();
                if (A09[5].length() != 7) {
                    throw new RuntimeException();
                }
                A09[2] = "rWG930h";
                if (isOpen) {
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Exception e4) {
                        c2321k02 = this.A03.A01;
                        c2321k02.A08().AAu(eventId, AbstractC10358a.A0z, new C10368b(e4));
                    }
                }
            }
            lock2 = C8E.A07;
            lock2.unlock();
            throw th;
        }
    }
}
