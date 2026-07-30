package com.facebook.ads.redexgen.core;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: assets/audience_network.dex */
public final class PR implements InterfaceC2002ej {
    public static byte[] A04;
    public static final String[] A05;
    public String A00;
    public String A01;
    public final SparseArray<C2001ei> A02 = new SparseArray<>();
    public final InterfaceC1521Sb A03;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 15);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{72, -107, -42, -47, -115, -74, -69, -63, -78, -76, -78, -65, -115, -67, -65, -74, -70, -82, -65, -58, -115, -72, -78, -58, -115, -69, -68, -63, -115, -69, -62, -71, -71, -103, -40, -46, -26, -115, -63, -78, -59, -63, -115, -69, -68, -63, -115, -69, -62, -71, -71, -103, -38, -46, -31, -50, -47, -50, -31, -50, -115, -81, -71, -68, -81, -115, -69, -68, -63, -115, -69, -62, -71, -71, -106, 97, 112, 99, 95, 114, 99, 62, 114, 95, 96, 106, 99, 62, -95, -81, -84, -83, 125, -79, -98, -97, -87, -94, 125, -90, -93, 125, -94, -75, -90, -80, -79, -80, 125, -59, -8, -17, -48, -20, -31, -7, -27, -14, -61, -31, -29, -24, -27, -55, -18, -28, -27, -8, -46, -51, -13, -18, -86, -57, -86, -55, -64, -70, -50, -114, -122, -107, -126, -123, -126, -107, -126};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AAh(HashMap<String, C2001ei> hashMap, SparseArray<String> sparseArray) throws IOException {
        PO A02;
        AbstractC2011es.A08(this.A02.size() == 0);
        try {
            if (AbstractC1523Sd.A00(this.A03.getReadableDatabase(), 1, (String) AbstractC2011es.A01(this.A00)) != 1) {
                SQLiteDatabase writableDatabase = this.A03.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    A04(writableDatabase);
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            }
            Cursor A00 = A00();
            while (A00.moveToNext()) {
                try {
                    int i = A00.getInt(0);
                    String str = (String) AbstractC2011es.A01(A00.getString(1));
                    A02 = C2003ek.A02(new DataInputStream(new ByteArrayInputStream(A00.getBlob(2))));
                    C2001ei c2001ei = new C2001ei(i, str, A02);
                    hashMap.put(c2001ei.A02, c2001ei);
                    sparseArray.put(c2001ei.A01, c2001ei.A02);
                } finally {
                }
            }
            if (A00 != null) {
                A00.close();
            }
        } catch (SQLiteException e) {
            hashMap.clear();
            sparseArray.clear();
            throw new C1520Sa(e);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AJO(HashMap<String, C2001ei> hashMap) throws IOException {
        if (this.A02.size() == 0) {
            return;
        }
        try {
            SQLiteDatabase writableDatabase = this.A03.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            for (int i = 0; i < this.A02.size(); i++) {
                try {
                    C2001ei valueAt = this.A02.valueAt(i);
                    if (valueAt == null) {
                        A05(writableDatabase, this.A02.keyAt(i));
                    } else {
                        A06(writableDatabase, valueAt);
                    }
                } finally {
                    writableDatabase.endTransaction();
                }
            }
            writableDatabase.setTransactionSuccessful();
            this.A02.clear();
        } catch (SQLException e) {
            throw new C1520Sa(e);
        }
    }

    static {
        A03();
        A05 = new String[]{A01(128, 2, 90), A01(136, 3, 70), A01(139, 8, 18)};
    }

    public PR(InterfaceC1521Sb interfaceC1521Sb) {
        this.A03 = interfaceC1521Sb;
    }

    private Cursor A00() {
        return this.A03.getReadableDatabase().query((String) AbstractC2011es.A01(this.A01), A05, null, null, null, null, null);
    }

    public static String A02(String str) {
        return A01(FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD, 19, 113) + str;
    }

    private void A04(SQLiteDatabase sQLiteDatabase) throws C1520Sa {
        AbstractC1523Sd.A04(sQLiteDatabase, 1, (String) AbstractC2011es.A01(this.A00), 1);
        A07(sQLiteDatabase, (String) AbstractC2011es.A01(this.A01));
        sQLiteDatabase.execSQL(A01(75, 13, 15) + this.A01 + A01(0, 1, 25) + A01(1, 74, 94));
    }

    private void A05(SQLiteDatabase sQLiteDatabase, int i) {
        sQLiteDatabase.delete((String) AbstractC2011es.A01(this.A01), A01(130, 6, 123), new String[]{Integer.toString(i)});
    }

    private void A06(SQLiteDatabase sQLiteDatabase, C2001ei c2001ei) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C2003ek.A08(c2001ei.A03(), new DataOutputStream(byteArrayOutputStream));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        ContentValues contentValues = new ContentValues();
        contentValues.put(A01(128, 2, 90), Integer.valueOf(c2001ei.A01));
        contentValues.put(A01(136, 3, 70), c2001ei.A02);
        contentValues.put(A01(139, 8, 18), byteArray);
        sQLiteDatabase.replaceOrThrow((String) AbstractC2011es.A01(this.A01), null, contentValues);
    }

    public static void A07(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL(A01(88, 21, 78) + str);
    }

    public static void A08(InterfaceC1521Sb interfaceC1521Sb, String str) throws C1520Sa {
        try {
            String A02 = A02(str);
            SQLiteDatabase writableDatabase = interfaceC1521Sb.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                AbstractC1523Sd.A03(writableDatabase, 1, str);
                A07(writableDatabase, A02);
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e) {
            throw new C1520Sa(e);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void A5f() throws C1520Sa {
        A08(this.A03, (String) AbstractC2011es.A01(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final boolean A6I() throws C1520Sa {
        try {
            return AbstractC1523Sd.A00(this.A03.getReadableDatabase(), 1, (String) AbstractC2011es.A01(this.A00)) != -1;
        } catch (SQLException e) {
            throw new C1520Sa(e);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AA5(long j) {
        this.A00 = Long.toHexString(j);
        this.A01 = A02(this.A00);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AEn(C2001ei c2001ei, boolean z) {
        if (z) {
            this.A02.delete(c2001ei.A01);
        } else {
            this.A02.put(c2001ei.A01, null);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AFS(C2001ei c2001ei) {
        this.A02.put(c2001ei.A01, c2001ei);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2002ej
    public final void AJN(HashMap<String, C2001ei> hashMap) throws IOException {
        try {
            SQLiteDatabase writableDatabase = this.A03.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                A04(writableDatabase);
                Iterator<C2001ei> it = hashMap.values().iterator();
                while (it.hasNext()) {
                    A06(writableDatabase, it.next());
                }
                writableDatabase.setTransactionSuccessful();
                this.A02.clear();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e) {
            throw new C1520Sa(e);
        }
    }
}
