package com.google.android.exoplayer2.scheduler;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import com.facebook.ads.redexgen.core.AbstractC2011es;
import com.facebook.ads.redexgen.core.AbstractC2094gE;
import com.facebook.ads.redexgen.core.C1740aP;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class Requirements implements Parcelable {
    public static byte[] A01;
    public static String[] A02 = {"SCihsuouoa", "77meYjHORzh4z58zj1yPh", "VFMbYEvicegoL3Ny7707tIZVB9JywYDk", "Dy9z0IaQngiU0j8eZA72HGO5jyre7kRI", "qcwnw5JBziNJnyTBo", "Cv9AmtFZlkva1f3XhkEsMeIjzx24HtGM", "Li1mc3BeBSFoUPXvisiKfZMMNavlfVlL", "NofFgpqD"};
    public static final Parcelable.Creator<Requirements> CREATOR;
    public final int A00;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 20);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-120, -107, -117, -103, -106, -112, -117, 85, -112, -107, -101, -116, -107, -101, 85, -120, -118, -101, -112, -106, -107, 85, 105, 104, 123, 123, 108, 121, Byte.MIN_VALUE, -122, 106, 111, 104, 117, 110, 108, 107, 123, -120, 126, -116, -119, -125, 126, 72, -125, -120, -114, Byte.MAX_VALUE, -120, -114, 72, 123, 125, -114, -125, -119, -120, 72, 94, 95, 112, 99, 93, 95, 121, 109, 110, 105, 108, 91, 97, 95, 121, 102, 105, 113, -80, -68, -69, -69, -78, -80, -63, -74, -61, -74, -63, -58, -110, -111, -103, -121, -108, -78, -77, -96, -77, -76, -78};
    }

    static {
        A02();
        CREATOR = new C1740aP();
    }

    public Requirements(int i) {
        this.A00 = (i & 2) != 0 ? i | 1 : i;
    }

    private int A00(Context context) {
        if (!A0A()) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) AbstractC2011es.A01(context.getSystemService(A01(77, 12, 57)));
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected() || !A06(connectivityManager)) {
            return this.A00 & 3;
        }
        if (!A0C() || !connectivityManager.isActiveNetworkMetered()) {
            return 0;
        }
        if (A02[5].charAt(5) != 't') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[1] = "Upqdgoh6y3T4dNJj3jvIV";
        strArr[7] = "QXzB9yuY";
        return 2;
    }

    private boolean A03(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter(A01(0, 37, 19)));
        if (registerReceiver == null) {
            return false;
        }
        int intExtra = registerReceiver.getIntExtra(A01(94, 6, 43), -1);
        return intExtra == 2 || intExtra == 5;
    }

    private boolean A04(Context context) {
        PowerManager powerManager = (PowerManager) AbstractC2011es.A01(context.getSystemService(A01(89, 5, 14)));
        if (AbstractC2094gE.A02 >= 23) {
            return powerManager.isDeviceIdleMode();
        }
        return AbstractC2094gE.A02 < 20 ? !powerManager.isScreenOn() : !powerManager.isInteractive();
    }

    private boolean A05(Context context) {
        return context.registerReceiver(null, new IntentFilter(A01(37, 40, 6))) == null;
    }

    public static boolean A06(ConnectivityManager connectivityManager) {
        if (AbstractC2094gE.A02 < 24) {
            return true;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities != null) {
                if (networkCapabilities.hasCapability(16)) {
                    return true;
                }
            }
            return false;
        } catch (SecurityException unused) {
            return true;
        }
    }

    public final int A07(Context context) {
        int A00 = A00(context);
        if (A08() && !A03(context)) {
            A00 |= 8;
        }
        if (A09() && !A04(context)) {
            A00 |= 4;
        }
        if (A0B() && !A05(context)) {
            return A00 | 16;
        }
        return A00;
    }

    public final boolean A08() {
        return (this.A00 & 8) != 0;
    }

    public final boolean A09() {
        return (this.A00 & 4) != 0;
    }

    public final boolean A0A() {
        return (this.A00 & 1) != 0;
    }

    public final boolean A0B() {
        return (this.A00 & 16) != 0;
    }

    public final boolean A0C() {
        return (this.A00 & 2) != 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.A00 == ((Requirements) obj).A00;
    }

    public final int hashCode() {
        return this.A00;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.A00);
    }
}
