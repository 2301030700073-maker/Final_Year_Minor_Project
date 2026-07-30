package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.facebook.ads.internal.api.AdSizeApi;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomizations;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.exoplayer2.ColorInfo;
import com.google.android.exoplayer2.video.DummySurface;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.0T, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C0T extends AnonymousClass10 {
    public static boolean A0y;
    public static boolean A0z;
    public static byte[] A10;
    public static String[] A11 = {"v9JW9d6mC4vVOXkKiuoPSKLjDHsuSFtl", "gIeHAk6WOzq2Y5rDB1esWl6sHVKNasBe", "EXXUcYdUXUj0vKHwdmCt8An0AEm5LNUx", "3czcsYB4y2EByKzz5ZqHef8RpAiR40Nr", "fs5EyusZMzPeANn58", "Vmk2kqnLGS8cuaCfxBf7qdhnj23D1lK8", "wawdFFlTZY47ktG", "L98TU6fXHJGhXusLAmdJJvi5hEKm1qt"};
    public static final int[] A12;
    public C1442Ox A00;
    public float A01;
    public float A02;
    public float A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public int A0G;
    public int A0H;
    public long A0I;
    public long A0J;
    public long A0K;
    public long A0L;
    public long A0M;
    public long A0N;
    public long A0O;
    public long A0P;
    public long A0Q;
    public long A0R;
    public MediaFormat A0S;
    public Surface A0T;
    public Surface A0U;
    public Y2 A0V;
    public C2107gS A0W;
    public InterfaceC2123gi A0X;
    public Object A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public boolean A0c;
    public boolean A0d;
    public boolean A0e;
    public boolean A0f;
    public boolean A0g;
    public boolean A0h;
    public boolean A0i;
    public boolean A0j;
    public final int A0k;
    public final int A0l;
    public final int A0m;
    public final int A0n;
    public final long A0o;
    public final Context A0p;
    public final C2109gU A0q;
    public final C2128gn A0r;
    public final C2131gq A0s;
    public final C2148h7 A0t;
    public final boolean A0u;
    public final boolean A0v;
    public final long[] A0w;
    public final long[] A0x;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 15 out of bounds for length 14
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.restartVar(DebugInfoParser.java:193)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:141)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static Point A07(Z2 z2, ZM zm) throws ZW {
        boolean z = zm.A0A > zm.A0L;
        int i = z ? zm.A0A : zm.A0L;
        int i2 = z ? zm.A0L : zm.A0A;
        float f = i2 / i;
        for (int i3 : A12) {
            int i4 = (int) (i3 * f);
            if (i3 <= i || i4 <= i2) {
                return null;
            }
            if (AbstractC2094gE.A02 >= 21) {
                int i5 = z ? i4 : i3;
                if (!z) {
                    i3 = i4;
                }
                Point A0N = z2.A0N(i5, i3);
                if (A11[1].charAt(9) != 'z') {
                    throw new RuntimeException();
                }
                String[] strArr = A11;
                strArr[6] = "eVrgFLGLScT3SQl";
                strArr[4] = "YUCpxf7mgZXJgqA9S";
                if (z2.A0R(A0N.x, A0N.y, zm.A01)) {
                    return A0N;
                }
            } else {
                int A05 = AbstractC2094gE.A05(i3, 16) * 16;
                int A052 = AbstractC2094gE.A05(i4, 16) * 16;
                if (A05 * A052 <= ZZ.A00()) {
                    int i6 = z ? A052 : A05;
                    if (!z) {
                        A05 = A052;
                    }
                    return new Point(i6, A05);
                }
            }
        }
        return null;
    }

    public static String A0B(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A10, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b = copyOfRange[i4];
            String[] strArr = A11;
            if (strArr[2].charAt(5) != strArr[3].charAt(5)) {
                throw new RuntimeException();
            }
            A11[1] = "mXsQu48WzzV6yd0DLsnHesgPlryuTOfM";
            copyOfRange[i4] = (byte) ((b - i3) - 29);
        }
        return new String(copyOfRange);
    }

    public static void A0P() {
        A10 = new byte[]{-69, -64, -70, -69, 100, 106, 100, 102, -73, -67, -73, -70, -82, -98, -99, -102, -92, -99, -77, 125, 109, 108, 105, 115, 108, -120, 113, 97, 102, 96, 97, 113, 98, 96, 97, 102, -111, 100, 96, -106, -116, -123, -123, -123, -126, -74, -81, -91, -98, -98, -98, -34, -38, -29, -31, -122, 124, 117, 118, 117, -90, 121, 125, 124, 114, 107, 109, 107, -100, 111, 115, -57, -52, -38, -57, -37, -32, -18, -24, -120, -102, -100, -102, -90, -97, 119, 119, -120, -117, -87, -69, -67, -69, -57, -64, -104, -104, -87, -84, -87, -80, -62, -60, -62, -50, -57, -97, -97, -80, -77, -78, -100, -82, -80, -82, -70, -77, -117, -117, -100, -97, -70, -115, 119, -92, -102, -88, -91, -93, -105, -82, 86, 119, 104, 108, 121, 106, 126, -62, -14, -10, -30, -47, -16, -8, -26, -13, -50, -59, -9, -7, -9, -29, -34, -58, -71, -76, -76, -49, -48, -113, -61, -64, -81, -83, -100, -67, -62, -77, -83, Byte.MIN_VALUE, -85, -75, -86, -84, -76, -106, -102, -63, -43, -27, -44, -23, -36, -44, -77, -57, -34, -77, -59, -61, -60, -56, -84, -68, -85, -64, -77, -85, -55, -85, -66, -64, -100, -92, -76, -93, -72, -85, -93, -63, -93, -74, -72, -107, -63, -106, -83, -119, 119, 118, -125, 107, 105, 106, 105, -110, 124, 99, 101, -91, -78, -86, -109, -104, -110, -101, -62, -49, -40, -73, -78, -34, -56, -81, -81, -65, -21, -32, -31, -33, -100, -23, -35, -12, -100, -18, -31, -17, -21, -24, -15, -16, -27, -21, -22, -100, -35, -32, -26, -15, -17, -16, -31, -32, -100, -16, -21, -74, -100, -39, 5, 3, -1, 5, -23, -57, -79, -95, -94, -96, -97, 115, 122, -125, 117, 111, -115, 111, 97, -115, 126, -96, -99, -116, -109, -100, -114, -120, -90, -107, -74, -69, -84, 116, 123, -124, 118, 112, -114, Byte.MAX_VALUE, -95, -104, -100, -118, -111, -102, -116, -122, -92, -105, -90, -66, -92, -99, -77, -28, -45, -32, -63, -30, -49, -32, -51, -63, -83, -102, -104, -104, -104, -111, 126, 124, 124, 126, -87, -106, -108, -108, -103, -61, -80, -81, -82, -82, -69, -88, -89, -90, -88, -101, -120, -121, -122, -118, -105, -124, -124, -126, -126, 101, Byte.MIN_VALUE, -117, -110, -124, 98, -121, -124, -126, -118, 63, 122, -117, -124, -122, Byte.MIN_VALUE, -126, -104, 101, -111, Byte.MIN_VALUE, -116, -124, 114, -120, -103, -124, 75, 63, -122, -120, -114, -115, -124, -124, -98, -122, -127, -117, 118, 114, 117, 111, -87, -85, -79, -80, -89, -89, -63, -75, -71, -71, -109, -104, -110, -101, -103, -101, -95, -96, -105, -105, -79, -91, -87, -87, -125, -120, -124, -119, -29, -27, -21, -22, -31, -31, -5, -17, -13, -13, -51, -46, -49, -51, -79, -77, -71, -72, -81, -81, -55, -63, -84, -74, -97, -95, -102, -94, 111, 113, 119, 118, 109, 109, -121, Byte.MAX_VALUE, 106, 116, 95, 91, 94, 93, 101, 103, 109, 108, 99, 99, 125, 117, 96, 106, 85, 83, 79, 87, -116, -82, -108, -109, -118, -118, -92, -120, -121, -111, 124, 122, 118, 120, -38, -4, -30, -31, -40, -40, -14, -38, -43, -33, -54, -58, -60, -52, -123, -110, 126, -108, -126, -122, 93, -117, -107, -111, 106, -119, 111, 118, -44, -29, -50, -40, -38, -71, -44, -85, -70, -90, -92, -80, -112, -85, -101, -86, -104, -96, -97, -74, -59, -60, -68, -63, -101, -74, -60, -45, -45, -67, -49, -87, -60, 122, -97, -105, -102, -97, -102, -87, 94, -119, 102, 104, 99, 126, 123, -114, -53, -44, -49, -82, -51, -77, -78, -34, -56, -61, -12, -57, -61, -76, -81, -107, -77, -100, -101, -104, -47, -52, -78, -46, -73, -70, -75, -30, -23, -61, -53, -58, -57, -51, -78, -53, -44, -43, -36, -43, -122, -89, -104, -106, -105, -100, -56, -103, -106, 124, -107, -98, -97, -90, -97, 80, 123, 97, 96, -111, 100, 96, -55, -30, -21, -20, -13, -20, -99, -56, -75, 115, 91, -119, -47, -55, -51, -34, -39, -29, -47, -71, -80, -69, -103, -102, -78, -79, -74, -82, -112, -68, -79, -78, -80, -93, -74, -79, -78, -68, -97, -78, -69, -79, -78, -65, -78, -65, 118, -104, -99, -104, 110, 91, 81, 93, 112, 86, 117, 125, 110, 82, 110, -112, -107, -112, 104, 84, -92, -84, -97, -102, -97, -105, -54, -44, -79, -80, -83, -58, -125, -115, 106, 108, 104, Byte.MAX_VALUE, -115, -117, -106, 108, -91, -83, -83, -91, -86, -93, -38, -7, -16, -37, -9, 0, -2, -64, -33, -127, 103, 105, 98, -103, -127, 126, -27, -41, -57, -62, -53, -52, -59, -30, 122, 113, 120, 95, 92, 98, -21, -30, -23, -47, -52, -53, -122, 125, -124, 108, 103, 103, -119, -123, 126, -63, -61, -64, -88, -60, -126, -102, -109, -96, -90, -95, -97, 104, -38, -13, 2, -17, -10, -86, -21, 4, 19, 4, -49, -56, -46, -6, -50, -30, 122, -109, -94, -109, 95, 87, 91, 90, -119, 94, 113, -65, -95, -93, -98, -28, -57, -59, -55, -61, -26, -55, -57, -52, -118, 109, 108, 106, 105, -67, -95, -91, -95, -123, -118, -84, -103, -77, -87, -99, -92, 125, -31, -12, -13, -4, -8, -81, -61, -25, -114, -95, -96, -87, -91, 92, -118, -85, -80, -95, 92, 110, -33, -14, -15, -6, -10, -83, -37, -4, 1, -14, -83, -64, -99, -80, -71, -81, -80, -67, 107, -70, -64, -65, -69, -64, -65, 107, -79, -84, -76, -73, -80, -81, -79, -60, -46, -50, -53, -44, -45, -56, -50, -51, -46, Byte.MAX_VALUE, -44, -51, -54, -51, -50, -42, -51, -115, Byte.MAX_VALUE, -94, -50, -61, -60, -62, Byte.MAX_VALUE, -52, -64, -41, Byte.MAX_VALUE, -47, -60, -46, -50, -53, -44, -45, -56, -50, -51, -103, Byte.MAX_VALUE, -98, -104, 120, -110, -124, 126, Byte.MIN_VALUE, 123, -92, -98, 126, -101, -125, -127, -127, -104, -90, -31, -37, -69, -40, -64, -66, -66, -37, -59, -65, -97, -64, -85, -93, -94, -60, -90, -64, -62, 
        -76, -82, -65, -115, -64, -90, -52, -49, -55, -90, -67, -51, -49, -86, -82, 120, -111, -122, -103, -118, -124, 117, -105, -108, -106, -78, -79, -68, 99, -105, -92, -91, -81, -88, -73, 99, -106, -23, -41, -56, -62, -52, -56, -59, -37, -43, -61, -76, -82, -72, -76, -79, -39, 125, 107, 92, 86, 97, 94, 89, 111, -38, -56, -71, -77, -66, -69, -74, -45, -84, -57, -57, 120, -59, -71, -58, -47, 120, -53, -52, -54, -67, -71, -59, 120, -69, -64, -71, -58, -65, -67, -53, -124, 120, -53, -57, 120, -68, -54, -57, -56, -56, -63, -58, -65, 120, -57, -66, -66, -53, -67, -52, -110, 120, -44, -81, -36, -72, -71, -51, -56, 122, 89, -25, -28, -55, -55, -63, -36, -73, -29, -52, -49, -32, -51, -70, -32, -26, -30, -65, -60, -60, -63, -28, -69, -68, -23, -38, -36, -39, -71, -105, -113, 125, -121, 74, -123, Byte.MAX_VALUE, -109, -126, -121, -115, 75, -111, -125, -111, -111, -121, -115, -116, 75, -121, -126, -19, 1, 0, -5, -71, -14, -2, -17, -44, -93, -97, -46, -33, -43, -29, -32, -38, -43, -97, -46, -25, -94, -98, -43, -46, -25, -94, -43, -97, -43, -42, -44, -32, -43, -42, -29, -120, -105, -108, -107, 82, -121, -108, -103, -103, -108, -110, -117, -102, -105, -104, 85, -108, -115, -114, -100, -65, -50, -53, -52, -119, -50, -59, -61, -60, -48, -66, -51, -54, -53, -120, -49, -54, -53, -33, -14, -83, -43, -24, -91, -118, -121, -108, -115, -121, -110, -55, -54, -57, -34, -20, -23, -22, -48, -29, -34, -33, -23, -68, -17, -32, -32, -33, -20, -95, -89, -86, -119, -110, -106, -105, -120, -107, -20, -8, -25, -13, -21, -77, -8, -25, -6, -21, -28, -13, -27, -13, -107, -96, -105, -108, -108, -105, -100, -104, -107, -103, -105, -104, -92, -107, -95, -112, -116, -110, 98, 99, -102, -103, -116, -111, -95, -94, -103, -80, -65, -119, -108, -115, 117, -112, -89, 119, 110, 113, 111, -66, -73, -74, -63, -63, -115, -116, -120, -118, -76, -114, -115, -123, -117, -68, -59, -68, -58, -119, -125, -101, -90, -105, -98, -111, -123, 102, 99, -47, -103, -33, -45, -37, -52, -48, -43, -38, -8, -18, 1, -14, -16, -71, -72, -70, -76, -100, -107, -113, -88, 102, -36, -33, -25, -99, -36, -47, -28, -43, -34, -45, -23, 3, -56, -74, 4, 5, 10, -5, -74, -86, -73, -73, -78, -73, -80, -113, -125, -108, -117, -112, -111, -127, -120, -75, -87, -64, 117, -80, -83, -79, -81, -80, -68, -40, -52, -29, -104, -44, -39, -37, -32, -33, -104, -34, -44, -27, -48, -98, -110, -87, 94, -88, -102, -107, -91, -103, -6, -11, -117, -121, -126, -115, -2, -6, -2, -10, -62, -75, -63, -75, -56, -68, -103, -108, -114, -106, -105, -116, -96, -98, -118, -111, -82, 112, 111, 112, -18, -33, -20, -29, -22, -22, -35, -30, -85, -100, -87, -96, -89, -89, -102, -97, -89, -77, -92, -79, -88, -81, -81, -94, -89, -74, -60, -75, -62, -71, -64, -64, -77, -72, -56, -76, -74, -83, -77, -74, -83, -72, -67, -83, -96, -89, -96, -100, -82, -96, -118, -80, -81, -85, -80, -81, 125, -80, -95, -95, -96, -83, -80, -83, -78, -97, -78, -89, -83, -84, 107, -94, -93, -91, -80, -93, -93, -79, -18, -76, -85, -80, -13, -85, -84, -77, -67, -85, -72, -66, -71, -72, -77, -48, -56, -58, -51, -77, -58, -63, -62, -52, -97, -46, -61, -61, -62, -49, -54, -73, -65, -70, -59, -75, -56, -59, -51, -91, -108, -99, -112, -106, -90, -30, -29, -36, -36, -45, -38, -45, -46, -101, -34, -38, -49, -25, -48, -49, -47, -39, -51, -68, -55, -59, -68, -68, -74, -92, -116, -6, -19, -24, -23, -13, -77, -73, -21, -12, -12, 3, -10, -15, -14, -4, -68, -18, 3, -67, -66, -97, -110, -115, -114, -104, 88, -118, -97, -116, 10, -3, -8, -7, 3, -61, -8, 3, 0, -10, 13, -63, 10, -3, 7, -3, 3, 2, -101, -114, -119, -118, -108, 84, -115, -118, -101, -120, -35, -48, -53, -52, -42, -106, -44, -41, -101, -35, -108, -52, -38, 4, -9, -14, -13, -3, -67, 6, -69, 4, -4, -14, -68, -3, -4, -64, -68, 4, -2, -58, -109, -122, -127, -126, -116, 76, -107, 74, -109, -117, -127, 75, -116, -117, 79, 75, -109, -115, 86, -98, -120, -101, -102, -106, -107, -94, -109, -92, -99, -112, -113, -60, -74, -79, -63, -75, -39, -47, -47, -58, -43, -63, -56, 18, 10, 10, -1, 14, -6, 1, 9, -86};
    }

    static {
        A0P();
        A12 = new int[]{1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    }

    public C0T(Context context, C1383Mg c1383Mg, MediaCodecRendererMetaParameters mediaCodecRendererMetaParameters, ZS zs, long j, TO to, boolean z, boolean z2, Handler handler, InterfaceC2149h8 interfaceC2149h8, int i, int i2, int i3, int i4, int i5) {
        super(2, c1383Mg, mediaCodecRendererMetaParameters, zs, to, z, z2, i3, i4);
        this.A0e = true;
        this.A0Z = true;
        boolean z3 = false;
        this.A0f = false;
        this.A0K = -9223372036854775807L;
        this.A0c = false;
        this.A0v = MetaExoPlayerUpgradeConfig.A03(EnumC1387Mn.A1j);
        this.A0o = j;
        this.A0k = i;
        this.A0l = i2;
        this.A0p = context.getApplicationContext();
        this.A0m = i5;
        this.A0s = new C2131gq(context);
        this.A0r = new C2128gn(this.A0p);
        this.A0t = new C2148h7(handler, interfaceC2149h8);
        this.A0q = new C2109gU(this.A0r, this, this.A0v);
        this.A0u = A0i();
        if (AbstractC2094gE.A02 == 29 && AbstractC2094gE.A06.startsWith(A0B(811, 6, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD))) {
            z3 = true;
        }
        this.A0a = z3;
        this.A0w = new long[10];
        this.A0x = new long[10];
        this.A0R = -9223372036854775807L;
        this.A0O = -9223372036854775807L;
        this.A0M = -9223372036854775807L;
        this.A08 = -1;
        this.A06 = -1;
        this.A01 = -1.0f;
        this.A02 = -1.0f;
        this.A0H = 1;
        A0F();
    }

    private int A00(ZM zm) {
        if (zm.A0B != -1) {
            int i = 0;
            int i2 = zm.A0X.size();
            for (int initializationDataCount = 0; initializationDataCount < i2; initializationDataCount++) {
                int totalInitializationDataSize = zm.A0X.get(initializationDataCount).length;
                i += totalInitializationDataSize;
            }
            int totalInitializationDataSize2 = zm.A0B;
            return totalInitializationDataSize2 + i;
        }
        int i3 = zm.A0L;
        String str = zm.A0W;
        int width = zm.A0A;
        return A02(str, i3, width);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ae, code lost:
    
        if (r6 == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b0, code lost:
    
        r5 = new java.lang.StringBuilder();
        r0 = A0B(380, 29, 2);
        r5 = r5.append(r0).append(r7.A0L);
        r0 = A0B(1775, 1, 21);
        r5 = r5.append(r0).append(r7.A0A);
        r0 = A0B(1154, 3, 13);
        r1 = r5.append(r0);
        r0 = com.facebook.ads.redexgen.core.AbstractC2094gE.A04;
        r5 = r1.append(r0);
        r0 = A0B(1153, 1, 3);
        r5 = r5.append(r0).toString();
        r0 = A0B(682, 23, 48);
        com.facebook.ads.redexgen.core.AbstractC2055fb.A04(r0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0113, code lost:
    
        if (r6 == false) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A01(com.facebook.ads.redexgen.core.ZS r6, com.facebook.ads.redexgen.core.ZM r7, boolean r8) throws com.facebook.ads.redexgen.core.ZW {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C0T.A01(com.facebook.ads.redexgen.X.ZS, com.facebook.ads.redexgen.X.ZM, boolean):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int A02(String str, int i, int i2) {
        char c;
        int i3;
        int maxPixels;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals(A0B(1635, 10, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT))) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1662541442:
                if (str.equals(A0B(1682, 10, 8))) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1187890754:
                if (str.equals(A0B(1692, 13, 74))) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1331836730:
                if (str.equals(A0B(1655, 9, 12))) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1599127256:
                if (str.equals(A0B(1705, 19, 113))) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1599127257:
                if (str.equals(A0B(1724, 19, 0))) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
                i3 = i * i2;
                if (A11[5].charAt(17) != 'C') {
                    A11[0] = "XihfVUbotLZDx4xXTlX7dv9JcUprNuKG";
                    maxPixels = 2;
                    break;
                } else {
                    throw new RuntimeException();
                }
            case 2:
                if (A0B(179, 14, 118).equals(AbstractC2094gE.A06)) {
                    return -1;
                }
                i3 = AbstractC2094gE.A05(i, 16) * AbstractC2094gE.A05(i2, 16) * 16 * 16;
                maxPixels = 2;
                break;
            case 3:
                i3 = i * i2;
                maxPixels = 2;
                break;
            case 4:
            case 5:
                i3 = i * i2;
                maxPixels = 4;
                break;
            default:
                return -1;
        }
        int minCompressionRatio = i3 * 3;
        return minCompressionRatio / (maxPixels * 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long A03(long j, long j2, long j3, long j4, boolean z) {
        double playbackSpeed = A1f();
        long j5 = (long) ((j4 - j) / playbackSpeed);
        if (z) {
            return j5 - (j3 - j2);
        }
        return j5;
    }

    @MetaExoPlayerCustomization("D64704257: Adding a new param to control AI FRC")
    private final MediaFormat A08(ZM zm, C2107gS c2107gS, boolean z, int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(A0B(1462, 4, 116), zm.A0W);
        mediaFormat.setInteger(A0B(1755, 5, 48), zm.A0L);
        mediaFormat.setInteger(A0B(1307, 6, 19), zm.A0A);
        AbstractC2057fd.A06(mediaFormat, zm.A0X);
        AbstractC2057fd.A03(mediaFormat, A0B(1286, 10, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS), zm.A01);
        AbstractC2057fd.A04(mediaFormat, A0B(1548, 16, 33), zm.A0F);
        AbstractC2057fd.A02(mediaFormat, zm.A0N);
        mediaFormat.setInteger(A0B(1447, 9, 20), c2107gS.A02);
        mediaFormat.setInteger(A0B(1423, 10, 43), c2107gS.A00);
        AbstractC2057fd.A04(mediaFormat, A0B(1433, 14, 78), c2107gS.A01);
        if (AbstractC2094gE.A02 >= 23) {
            mediaFormat.setInteger(A0B(1521, 8, 39), 0);
        }
        if (z) {
            mediaFormat.setInteger(A0B(1173, 8, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION), 0);
        }
        MJ.A03(this.A11, mediaFormat);
        if (i != 0) {
            A0T(mediaFormat, i);
        }
        return mediaFormat;
    }

    private final C2107gS A0A(Z2 z2, ZM zm, ZM[] zmArr) throws ZW {
        int maxWidth;
        int i = zm.A0L;
        int i2 = zm.A0A;
        int A00 = A00(zm);
        int maxHeight = zmArr.length;
        if (maxHeight == 1) {
            return new C2107gS(i, i2, A00);
        }
        int i3 = 0;
        for (ZM streamFormat : zmArr) {
            boolean z = z2.A04;
            int maxHeight2 = A11[1].charAt(9);
            if (maxHeight2 != 122) {
                throw new RuntimeException();
            }
            A11[1] = "hFYniT29tzMfk4zkiR5Pben0nLKkZMmz";
            if (A0v(z, zm, streamFormat)) {
                int maxWidth2 = streamFormat.A0L;
                if (maxWidth2 != -1) {
                    int maxWidth3 = streamFormat.A0A;
                    if (maxWidth3 != -1) {
                        maxWidth = 0;
                        i3 |= maxWidth;
                        int maxWidth4 = streamFormat.A0L;
                        i = Math.max(i, maxWidth4);
                        int maxWidth5 = streamFormat.A0A;
                        i2 = Math.max(i2, maxWidth5);
                        int maxWidth6 = A00(streamFormat);
                        A00 = Math.max(A00, maxWidth6);
                    }
                }
                maxWidth = 1;
                i3 |= maxWidth;
                int maxWidth42 = streamFormat.A0L;
                i = Math.max(i, maxWidth42);
                int maxWidth52 = streamFormat.A0A;
                i2 = Math.max(i2, maxWidth52);
                int maxWidth62 = A00(streamFormat);
                A00 = Math.max(A00, maxWidth62);
            }
        }
        if (i3 != 0) {
            StringBuilder append = new StringBuilder().append(A0B(921, 43, 66)).append(i);
            String A0B = A0B(1775, 1, 21);
            String sb = append.append(A0B).append(i2).toString();
            String A0B2 = A0B(682, 23, 48);
            AbstractC2055fb.A07(A0B2, sb);
            Point A07 = A07(z2, zm);
            if (A07 != null) {
                int maxWidth7 = A07.x;
                i = Math.max(i, maxWidth7);
                int maxWidth8 = A07.y;
                i2 = Math.max(i2, maxWidth8);
                int maxWidth9 = A02(zm.A0W, i, i2);
                A00 = Math.max(A00, maxWidth9);
                AbstractC2055fb.A07(A0B2, A0B(246, 34, 95) + i + A0B + i2);
            }
        }
        return new C2107gS(i, i2, A00);
    }

    public static List<Z2> A0C(ZS zs, ZM zm) throws ZW {
        ArrayList arrayList = new ArrayList();
        String alternativeMimeType = ZZ.A0P(zm);
        if (alternativeMimeType != null) {
            List<Z2> A7e = zs.A7e(alternativeMimeType, false, false);
            if (AbstractC2094gE.A02 >= 26) {
                if (A0B(1664, 18, 119).equals(zm.A0W)) {
                    boolean isEmpty = A7e.isEmpty();
                    if (A11[5].charAt(17) == 'C') {
                        throw new RuntimeException();
                    }
                    A11[7] = "MjxkmDR";
                    if (!isEmpty) {
                        return A7e;
                    }
                    return arrayList;
                }
                return arrayList;
            }
            return arrayList;
        }
        return arrayList;
    }

    public static List<Z2> A0D(ZS zs, ZM zm, boolean z) throws ZW {
        String str = zm.A0W;
        if (str == null) {
            return Collections.emptyList();
        }
        String[] strArr = A11;
        if (strArr[2].charAt(5) != strArr[3].charAt(5)) {
            throw new RuntimeException();
        }
        A11[1] = "jfk4bz5Oizy2HT1tkEDilPHWV9VC8mhv";
        return Collections.unmodifiableList(zs.A7e(str, z, false));
    }

    private void A0E() {
        this.A0h = false;
        if (AbstractC2094gE.A02 >= 23 && this.A0j) {
            InterfaceC1691Yz A1j = A1j();
            String[] strArr = A11;
            if (strArr[2].charAt(5) != strArr[3].charAt(5)) {
                throw new RuntimeException();
            }
            A11[0] = "tRf4j3XAuhTUrishLHLLZY0n8xUtf2jr";
            if (A1j != null) {
                this.A00 = new C1442Ox(this, A1j);
            }
        }
    }

    private void A0F() {
        this.A0G = -1;
        this.A0E = -1;
        this.A03 = -1.0f;
        this.A0F = -1;
    }

    @MetaExoPlayerCustomization("need for SR to release EGL context")
    private void A0G() {
        if (this.A0q.A0G() && MetaExoPlayerUpgradeConfig.A03(EnumC1387Mn.A1h)) {
            this.A0q.A0A();
            throw null;
        }
    }

    private void A0H() {
        if (this.A0l > 0 && this.A05 > 0 && this.A05 >= this.A0l) {
            this.A0t.A00(this.A05, SystemClock.elapsedRealtime() - this.A0I);
        }
        this.A05 = 0;
        this.A0I = SystemClock.elapsedRealtime();
    }

    private void A0I() {
        InterfaceC1691Yz A1j = A1j();
        if (A1j != null && !this.A0c && A1j.A9A() > 30) {
            A0V(super.A0j);
            this.A0c = true;
        }
    }

    private void A0J() {
        if (this.A09 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long now = this.A0J;
            long elapsedMs = elapsedRealtime - now;
            this.A0t.A01(this.A09, elapsedMs);
            this.A09 = 0;
            this.A0J = elapsedRealtime;
        }
    }

    private void A0K() {
        if (this.A08 == -1 && this.A06 == -1) {
            return;
        }
        if (this.A0G != this.A08 || this.A0E != this.A06 || this.A0F != this.A07 || this.A03 != this.A01) {
            this.A0t.A0B(new Y2(this.A08, this.A06, this.A07, this.A01));
            this.A0G = this.A08;
            this.A0E = this.A06;
            this.A0F = this.A07;
            this.A03 = this.A01;
        }
    }

    private void A0L() {
        if (this.A0h) {
            this.A0t.A0D(this.A0U);
        }
    }

    private void A0M() {
        if (this.A0G != -1 || this.A0E != -1) {
            this.A0t.A0B(new Y2(this.A0G, this.A0E, this.A0F, this.A03));
        }
    }

    private void A0N() {
        long j;
        if (this.A0o > 0) {
            j = SystemClock.elapsedRealtime() + this.A0o;
        } else {
            j = -9223372036854775807L;
        }
        this.A0M = j;
    }

    @MetaExoPlayerCustomization("D36797879: Adding implementation for calculating avg render time")
    private void A0O() {
        super.A0i.A03(super.A0h);
    }

    private final void A0Q(int i) {
        super.A0i.A04 += i;
        this.A09 += i;
        this.A05 += i;
        super.A0i.A07 = Math.max(this.A05, super.A0i.A07);
        if (this.A09 >= this.A0k) {
            A0J();
        }
    }

    private final void A0R(long j, long j2, float f) {
        int A01 = (int) O5.A01(j);
        int A012 = (int) O5.A01(j2);
        if (A012 > 1000 && A012 < 10000) {
            int i = A01 + A012;
            int positionMs = this.A0A;
            int presentationGapMs = this.A0B;
            if (i > positionMs + presentationGapMs + 1000) {
                int presentationGapMs2 = this.A0A;
                if (A01 > presentationGapMs2) {
                    int i2 = this.A0A;
                    int i3 = this.A0B;
                    int positionMs2 = A11[1].charAt(9);
                    if (positionMs2 != 122) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A11;
                    strArr[2] = "bs9qXYsYT8loRf6GvckLlR6pDe1CBFH9";
                    strArr[3] = "Zg7YmY2aXY9EZ5gVNBnC4rp36cey1aFg";
                    if (A01 < i2 + i3) {
                        OA oa = super.A0i;
                        int i4 = oa.A0E;
                        int i5 = A01 + A012;
                        String[] strArr2 = A11;
                        String str = strArr2[2];
                        String str2 = strArr2[3];
                        int positionMs3 = str.charAt(5);
                        int presentationGapMs3 = str2.charAt(5);
                        if (positionMs3 != presentationGapMs3) {
                            throw new RuntimeException();
                        }
                        String[] strArr3 = A11;
                        strArr3[2] = "S6seRYbycKE2NQwE9DxjdMn9egSjrFLO";
                        strArr3[3] = "DAGbTYnYpv3sH0rNuac7wkHdB7hzbjmw";
                        int positionMs4 = this.A0A;
                        int presentationGapMs4 = this.A0B;
                        oa.A0E = i4 + ((int) (((i5 - (positionMs4 + presentationGapMs4)) * f) / 1000.0d));
                        this.A0A = A01;
                        this.A0B = A012;
                    }
                }
                int positionMs5 = this.A0A;
                int presentationGapMs5 = this.A0B;
                if (A01 > positionMs5 + presentationGapMs5) {
                    int presentationGapMs6 = (int) ((A012 * f) / 1000.0d);
                    super.A0i.A0E += presentationGapMs6;
                }
                this.A0A = A01;
                this.A0B = A012;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0S(long j, long j2, ZM zm, MediaFormat mediaFormat) {
        if (this.A0X != null) {
            this.A0X.AFa(j, j2, zm, mediaFormat);
        }
    }

    public static void A0T(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled(A0B(1609, 17, 81), true);
        mediaFormat.setInteger(A0B(1157, 16, 1), i);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A0U(android.view.Surface r10) throws com.facebook.ads.redexgen.core.EK {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C0T.A0U(android.view.Surface):void");
    }

    private void A0V(ZM zm) {
        InterfaceC1691Yz codec = A1j();
        if (codec != null && zm != null) {
            Pair<Long, Integer> A8Z = codec.A8Z();
            long longValue = ((Long) A8Z.first).longValue();
            String[] strArr = A11;
            if (strArr[2].charAt(5) != strArr[3].charAt(5)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A11;
            strArr2[6] = "KqB5WjprWJUdF9G";
            strArr2[4] = "cASIJFz4IWmOqOLOe";
            if (longValue > 0) {
                super.A0i.A04(A8Z);
                this.A0t.A04(super.A0i.A00, zm);
            }
        }
    }

    private final void A0W(InterfaceC1691Yz interfaceC1691Yz, int i, long j) {
        AbstractC2085g5.A02(A0B(1262, 15, 93));
        interfaceC1691Yz.AGq(i, false);
        AbstractC2085g5.A00();
        A0Q(1);
    }

    @MetaExoPlayerCustomization("D36797879: Adding implementation for calculating avg render time")
    private final void A0X(InterfaceC1691Yz interfaceC1691Yz, int i, long j) {
        if (this.A0v) {
            A0Y(interfaceC1691Yz, i, j);
            return;
        }
        A0K();
        try {
            AbstractC2085g5.A02(A0B(1529, 19, 30));
            long elapsedRealtime = SystemClock.elapsedRealtime();
            interfaceC1691Yz.AGq(i, true);
            long j2 = super.A0h;
            long startRenderTime = SystemClock.elapsedRealtime();
            super.A0h = j2 + (startRenderTime - elapsedRealtime);
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            super.A0i.A09++;
            A0H();
            A27();
            A0O();
        } finally {
            AbstractC2085g5.A00();
        }
    }

    @MetaExoPlayerCustomization("D36797879: Adding implementation for calculating avg render time")
    private final void A0Y(InterfaceC1691Yz interfaceC1691Yz, int i, long j) {
        AbstractC2085g5.A02(A0B(1529, 19, 30));
        long elapsedRealtime = SystemClock.elapsedRealtime();
        interfaceC1691Yz.AGq(i, true);
        long j2 = super.A0h;
        long startRenderTime = SystemClock.elapsedRealtime();
        super.A0h = j2 + (startRenderTime - elapsedRealtime);
        AbstractC2085g5.A00();
        super.A0i.A09++;
        A0H();
        if (!this.A0q.A0G()) {
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            if (A11[5].charAt(17) == 'C') {
                throw new RuntimeException();
            }
            A11[5] = "i8cO0zMNSWd1ewKpaUAlLuolVCtgXekF";
            this.A0P = elapsedRealtime2 * 1000;
            A0K();
            A27();
        }
    }

    private final void A0Z(InterfaceC1691Yz interfaceC1691Yz, int i, long j) {
        AbstractC2085g5.A02(A0B(1579, 15, 64));
        interfaceC1691Yz.AGq(i, false);
        AbstractC2085g5.A00();
        super.A0i.A0B++;
    }

    @MetaExoPlayerCustomization("D36797879: Adding implementation for calculating avg render time")
    private final void A0a(InterfaceC1691Yz interfaceC1691Yz, int i, long j, long j2) {
        if (this.A0v) {
            A0c(interfaceC1691Yz, i, j, j2, true);
            return;
        }
        A0K();
        ZM zm = super.A0j;
        MediaFormat mediaFormat = this.A0S;
        String[] strArr = A11;
        if (strArr[2].charAt(5) != strArr[3].charAt(5)) {
            throw new RuntimeException();
        }
        A11[1] = "1OxvY0lqazwFMaHeED37DJdg2bjujp7s";
        A0S(j, j2, zm, mediaFormat);
        try {
            AbstractC2085g5.A02(A0B(1529, 19, 30));
            long elapsedRealtime = SystemClock.elapsedRealtime();
            interfaceC1691Yz.AGp(i, j2);
            long j3 = super.A0h;
            long startRenderTime = SystemClock.elapsedRealtime();
            super.A0h = j3 + (startRenderTime - elapsedRealtime);
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            super.A0i.A09++;
            A0H();
            A27();
            A0O();
        } finally {
            AbstractC2085g5.A00();
        }
    }

    private final void A0b(@MetaExoPlayerCustomization InterfaceC1691Yz interfaceC1691Yz, int i, long j, long j2, boolean z) {
        if (this.A0v) {
            A0c(interfaceC1691Yz, i, j, j2, z);
            return;
        }
        A0K();
        A0S(j, j2, super.A0j, this.A0S);
        try {
            AbstractC2085g5.A02(A0B(1529, 19, 30));
            long elapsedRealtime = SystemClock.elapsedRealtime();
            interfaceC1691Yz.AGp(i, j2);
            long j3 = super.A0h;
            long startRenderTime = SystemClock.elapsedRealtime();
            super.A0h = j3 + (startRenderTime - elapsedRealtime);
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            super.A0i.A09++;
            A0H();
            A27();
            A0O();
        } finally {
            AbstractC2085g5.A00();
        }
    }

    @MetaExoPlayerCustomization("notifyFrameMetadataListener be removed once we take the Exo renderOutputBufferNow Function refactor")
    private final void A0c(InterfaceC1691Yz interfaceC1691Yz, int i, long j, long j2, boolean z) {
        if (z) {
            ZM zm = super.A0j;
            MediaFormat mediaFormat = this.A0S;
            if (A11[5].charAt(17) == 'C') {
                throw new RuntimeException();
            }
            A11[7] = "4VguciQ7";
            A0S(j, j2, zm, mediaFormat);
        }
        AbstractC2085g5.A02(A0B(1529, 19, 30));
        long elapsedRealtime = SystemClock.elapsedRealtime();
        interfaceC1691Yz.AGp(i, j2);
        long j3 = super.A0h;
        long startRenderTime = SystemClock.elapsedRealtime();
        super.A0h = j3 + (startRenderTime - elapsedRealtime);
        AbstractC2085g5.A00();
        super.A0i.A09++;
        A0H();
        if (!this.A0q.A0G()) {
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            A0K();
            if (A11[1].charAt(9) != 'z') {
                A27();
                A0O();
                return;
            }
            String[] strArr = A11;
            strArr[6] = "G2zU8YwkZwnM36T";
            strArr[4] = "pyfYVO0ogWIcNmhi4";
            A27();
            A0O();
        }
    }

    public static void A0d(InterfaceC1691Yz interfaceC1691Yz, Surface surface) {
        interfaceC1691Yz.AIh(surface);
    }

    @MetaExoPlayerCustomization
    private void A0f(Object obj) {
        this.A0d = ((Boolean) obj).booleanValue();
        A1j();
    }

    private boolean A0g() {
        if (this.A0m <= 0) {
            return false;
        }
        boolean z = this.A0K == -9223372036854775807L || System.currentTimeMillis() - this.A0K <= ((long) this.A0m);
        String[] strArr = A11;
        if (strArr[2].charAt(5) != strArr[3].charAt(5)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A11;
        strArr2[6] = "tSNEeTj3zvxCS6h";
        strArr2[4] = "zKNG4oagYbeBOD6F4";
        if (this.A0K == -9223372036854775807L) {
            AbstractC2055fb.A07(A0B(682, 23, 48), A0B(901, 20, 46));
            this.A0K = System.currentTimeMillis();
        }
        return z;
    }

    public static boolean A0h() {
        return AbstractC2094gE.A02 >= 21;
    }

    public static boolean A0i() {
        return AbstractC2094gE.A02 <= 22 && A0B(1280, 6, 6).equals(AbstractC2094gE.A03) && A0B(725, 6, 57).equals(AbstractC2094gE.A05);
    }

    public static /* synthetic */ boolean A0j() {
        boolean A0h = A0h();
        if (A11[0].charAt(18) == 'P') {
            throw new RuntimeException();
        }
        A11[0] = "7GiRrcnfpEvFmxn3JhCcvJZoro3FYcpR";
        return A0h;
    }

    public static boolean A0k(long j) {
        return j < -30000;
    }

    public static boolean A0l(long j) {
        return j < -500000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0m(long j, long j2) {
        boolean z;
        boolean z2 = A90() == 2;
        boolean isStarted = this.A0i;
        if (!isStarted) {
            if (!z2) {
                boolean isStarted2 = this.A0g;
                if (!isStarted2) {
                    z = false;
                }
            }
            z = true;
        } else {
            boolean isStarted3 = this.A0h;
            z = !isStarted3;
        }
        long elapsedRealtime = (SystemClock.elapsedRealtime() * 1000) - this.A0P;
        if (this.A0M == -9223372036854775807L && j >= A1i()) {
            if (z) {
                return true;
            }
            if (z2) {
                boolean isStarted4 = A0p(j2, elapsedRealtime);
                if (isStarted4) {
                    return true;
                }
            }
        }
        return false;
    }

    private final boolean A0n(long j, long j2) {
        return A0l(j);
    }

    private final boolean A0o(long j, long j2) {
        return A0k(j);
    }

    private final boolean A0p(long j, long j2) {
        return A0k(j) && j2 > 100000;
    }

    private final boolean A0q(InterfaceC1691Yz interfaceC1691Yz, int i, long j, long j2) throws EK {
        int A1Q = A1Q(j2);
        if (A1Q == 0) {
            return false;
        }
        OA oa = super.A0i;
        int droppedSourceBufferCount = oa.A06;
        oa.A06 = droppedSourceBufferCount + 1;
        int droppedSourceBufferCount2 = this.A04;
        A0Q(droppedSourceBufferCount2 + A1Q);
        A1m();
        if (!this.A0q.A0G()) {
            return true;
        }
        this.A0q.A09();
        throw null;
    }

    private boolean A0r(Z2 z2) {
        return AbstractC2094gE.A02 >= 23 && this.A0e && !this.A0j && !A0u(z2.A03) && (!z2.A06 || DummySurface.A05(this.A0p));
    }

    private final boolean A0u(String str) {
        char c = 0;
        if (str.startsWith(A0B(743, 10, 33))) {
            return false;
        }
        synchronized (C0T.class) {
            if (!A0z) {
                if (A0B(1253, 6, 9).equals(AbstractC2094gE.A03)) {
                    A0y = true;
                } else {
                    char c2 = 27;
                    if (AbstractC2094gE.A02 <= 27 && A0B(563, 5, 54).equals(AbstractC2094gE.A03)) {
                        A0y = true;
                    } else if (AbstractC2094gE.A02 < 27) {
                        String str2 = AbstractC2094gE.A03;
                        switch (str2.hashCode()) {
                            case -2144781245:
                                if (str2.equals(A0B(423, 14, 69))) {
                                    c2 = '+';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -2144781185:
                                if (str2.equals(A0B(437, 14, 53))) {
                                    c2 = ',';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -2144781160:
                                if (str2.equals(A0B(451, 14, ModuleDescriptor.MODULE_VERSION))) {
                                    c2 = '-';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -2097309513:
                                if (str2.equals(A0B(604, 6, 118))) {
                                    c2 = '?';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -2022874474:
                                if (str2.equals(A0B(220, 10, 22))) {
                                    c2 = 19;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1978993182:
                                if (str2.equals(A0B(731, 6, 95))) {
                                    c2 = 'M';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1978990237:
                                if (str2.equals(A0B(737, 6, 24))) {
                                    c2 = 'N';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1936688988:
                                if (str2.equals(A0B(777, 6, 13))) {
                                    c2 = 'X';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1936688066:
                                if (str2.equals(A0B(783, 6, 126))) {
                                    c2 = 'Y';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1936688065:
                                if (str2.equals(A0B(789, 6, 25))) {
                                    c2 = 'Z';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1931988508:
                                if (str2.equals(A0B(138, 10, 100))) {
                                    c2 = 11;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1696512866:
                                if (str2.equals(A0B(1137, 6, 113))) {
                                    c2 = '{';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1680025915:
                                if (str2.equals(A0B(280, 7, 121))) {
                                    c2 = 18;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1615810839:
                                if (str2.equals(A0B(803, 8, 21))) {
                                    c2 = '[';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1554255044:
                                if (str2.equals(A0B(1626, 9, 58))) {
                                    c2 = 't';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1481772737:
                                if (str2.equals(A0B(1494, 9, 30))) {
                                    c2 = 'T';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1481772730:
                                if (str2.equals(A0B(1503, 9, 38))) {
                                    c2 = 'U';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1481772729:
                                if (str2.equals(A0B(1512, 9, 55))) {
                                    c2 = 'V';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1320080169:
                                if (str2.equals(A0B(521, 14, 118))) {
                                    c2 = ')';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1217592143:
                                if (str2.equals(A0B(193, 11, 77))) {
                                    c2 = 15;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1180384755:
                                if (str2.equals(A0B(1353, 6, 54))) {
                                    c2 = ';';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1139198265:
                                if (str2.equals(A0B(1015, 9, 8))) {
                                    c2 = 'h';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -1052835013:
                                if (str2.equals(A0B(1466, 6, 55))) {
                                    c2 = 'K';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -993250464:
                                if (str2.equals(A0B(12, 7, 80))) {
                                    c2 = 3;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -993250458:
                                if (str2.equals(A0B(19, 7, 31))) {
                                    c2 = 4;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -965403638:
                                if (str2.equals(A0B(1564, 8, 94))) {
                                    c2 = 'j';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -958336948:
                                if (str2.equals(A0B(324, 11, 40))) {
                                    c2 = 29;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -879245230:
                                if (str2.equals(A0B(1603, 6, 20))) {
                                    c2 = 'p';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -842500323:
                                if (str2.equals(A0B(1472, 10, 14))) {
                                    c2 = 'L';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -821392978:
                                if (str2.equals(A0B(39, 7, 56))) {
                                    c2 = 7;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -797483286:
                                if (str2.equals(A0B(1006, 9, 92))) {
                                    c2 = 'i';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -794946968:
                                if (str2.equals(A0B(1743, 6, 10))) {
                                    c2 = 'u';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -788334647:
                                if (str2.equals(A0B(1749, 6, 14))) {
                                    c2 = 'v';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -782144577:
                                if (str2.equals(A0B(753, 9, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD))) {
                                    c2 = 'O';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -575125681:
                                if (str2.equals(A0B(507, 14, 40))) {
                                    c2 = '(';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -521118391:
                                if (str2.equals(A0B(409, 14, 34))) {
                                    c2 = '*';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -430914369:
                                if (str2.equals(A0B(817, 10, 126))) {
                                    c2 = '\\';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -290434366:
                                if (str2.equals(A0B(1594, 9, 57))) {
                                    c2 = 'k';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -282781963:
                                if (str2.equals(A0B(171, 8, 76))) {
                                    c2 = 14;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -277133239:
                                if (str2.equals(A0B(1143, 7, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD))) {
                                    c2 = '|';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -173639913:
                                if (str2.equals(A0B(292, 12, 17))) {
                                    c2 = 26;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case -56598463:
                                if (str2.equals(A0B(1767, 8, 126))) {
                                    c2 = 'x';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2126:
                                if (str2.equals(A0B(218, 2, 41))) {
                                    c2 = 17;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2564:
                                if (str2.equals(A0B(856, 2, 79))) {
                                    c2 = 'd';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2715:
                                if (str2.equals(A0B(1114, 2, 97))) {
                                    c2 = 'q';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2719:
                                if (str2.equals(A0B(1121, 2, 7))) {
                                    c2 = 's';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 3483:
                                if (str2.equals(A0B(1456, 2, 112))) {
                                    c2 = 'H';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 73405:
                                if (str2.equals(A0B(594, 3, 23))) {
                                    c2 = '>';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 75739:
                                if (str2.equals(A0B(668, 3, 9))) {
                                    c2 = 'D';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 76779:
                                if (str2.equals(A0B(679, 3, 70))) {
                                    c2 = 'J';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 78669:
                                if (str2.equals(A0B(766, 3, 44))) {
                                    c2 = 'R';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 79305:
                                if (str2.equals(A0B(795, 3, 28))) {
                                    c2 = '^';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 80618:
                                if (str2.equals(A0B(866, 3, 47))) {
                                    c2 = 'f';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 88274:
                                if (str2.equals(A0B(1150, 3, 66))) {
                                    c2 = '}';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 98846:
                                if (str2.equals(A0B(1247, 3, 95))) {
                                    c2 = 22;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 98848:
                                if (str2.equals(A0B(1250, 3, 85))) {
                                    c2 = 23;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 99329:
                                if (str2.equals(A0B(1259, 3, 72))) {
                                    c2 = 24;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 101481:
                                if (str2.equals(A0B(1277, 3, 30))) {
                                    c2 = '&';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1513190:
                                if (str2.equals(A0B(0, 4, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD))) {
                                    c2 = 0;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1514184:
                                if (str2.equals(A0B(4, 4, 22))) {
                                    c2 = 1;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1514185:
                                if (str2.equals(A0B(8, 4, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS))) {
                                    c2 = 2;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2436959:
                                if (str2.equals(A0B(762, 4, 20))) {
                                    c2 = 'Q';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2463773:
                                if (str2.equals(A0B(838, 4, 81))) {
                                    c2 = '`';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2464648:
                                if (str2.equals(A0B(847, 4, 120))) {
                                    c2 = 'b';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2689555:
                                if (str2.equals(A0B(1133, 4, FacebookMediationAdapter.ERROR_NULL_CONTEXT))) {
                                    c2 = 'z';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 3154429:
                                if (str2.equals(A0B(1296, 4, 97))) {
                                    c2 = '\'';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 3284551:
                                if (str2.equals(A0B(1376, 4, 112))) {
                                    c2 = '@';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 3351335:
                                if (str2.equals(A0B(1458, 4, 1))) {
                                    c2 = 'I';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 3386211:
                                if (str2.equals(A0B(1482, 4, 33))) {
                                    c2 = 'P';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 41325051:
                                if (str2.equals(A0B(671, 8, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT))) {
                                    c2 = 'G';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 55178625:
                                if (str2.equals(A0B(160, 11, 49))) {
                                    c2 = '\r';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 61542055:
                                if (str2.equals(A0B(26, 5, 19))) {
                                    c2 = 5;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 65355429:
                                if (str2.equals(A0B(287, 5, 79))) {
                                    c2 = 25;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 66214468:
                                if (str2.equals(A0B(345, 5, 74))) {
                                    c2 = 31;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 66214470:
                                if (str2.equals(A0B(350, 5, 46))) {
                                    c2 = ' ';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 66214473:
                                if (str2.equals(A0B(355, 5, 70))) {
                                    c2 = '!';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 66215429:
                                if (str2.equals(A0B(360, 5, 96))) {
                                    c2 = '\"';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 66215431:
                                if (str2.equals(A0B(365, 5, 88))) {
                                    c2 = '#';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 66215433:
                                if (str2.equals(A0B(370, 5, 56))) {
                                    c2 = '$';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 66216390:
                                if (str2.equals(A0B(375, 5, 52))) {
                                    c2 = '%';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 76402249:
                                if (str2.equals(A0B(798, 5, 84))) {
                                    c2 = '_';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 76404105:
                                if (str2.equals(A0B(842, 5, 118))) {
                                    c2 = 'a';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 76404911:
                                if (str2.equals(A0B(851, 5, 28))) {
                                    c2 = 'c';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 80963634:
                                if (str2.equals(A0B(1116, 5, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS))) {
                                    c2 = 'r';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 82882791:
                                if (str2.equals(A0B(1128, 5, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT))) {
                                    c2 = 'y';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 98715550:
                                if (str2.equals(A0B(1334, 5, 33))) {
                                    c2 = '8';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 101370885:
                                if (str2.equals(A0B(1380, 5, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT))) {
                                    c2 = 'A';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 102844228:
                                if (str2.equals(A0B(1385, 5, 19))) {
                                    c2 = 'B';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 165221241:
                                if (str2.equals(A0B(31, 8, 19))) {
                                    c2 = 6;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 182191441:
                                if (str2.equals(A0B(237, 9, 98))) {
                                    c2 = 21;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 245388979:
                                if (str2.equals(A0B(1415, 8, 5))) {
                                    c2 = 'F';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 287431619:
                                if (str2.equals(A0B(1300, 7, 17))) {
                                    c2 = '1';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 307593612:
                                if (str2.equals(A0B(55, 8, 40))) {
                                    c2 = '\t';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 308517133:
                                if (str2.equals(A0B(63, 8, 30))) {
                                    c2 = '\n';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 316215098:
                                if (str2.equals(A0B(1037, 8, 120))) {
                                    c2 = 'l';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 316215116:
                                if (str2.equals(A0B(1045, 8, 100))) {
                                    c2 = 'm';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 316246811:
                                if (str2.equals(A0B(1053, 8, 12))) {
                                    c2 = 'n';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 316246818:
                                if (str2.equals(A0B(1061, 8, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS))) {
                                    c2 = 'o';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 407160593:
                                if (str2.equals(A0B(827, 11, 13))) {
                                    c2 = ']';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 507412548:
                                if (str2.equals(A0B(858, 8, 55))) {
                                    c2 = 'e';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 793982701:
                                if (str2.equals(A0B(465, 14, 77))) {
                                    c2 = '.';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 794038622:
                                if (str2.equals(A0B(479, 14, 11))) {
                                    c2 = '/';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 794040393:
                                if (str2.equals(A0B(FacebookRequestErrorClassification.ESC_APP_INACTIVE, 14, 1))) {
                                    c2 = '0';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 835649806:
                                if (str2.equals(A0B(1408, 7, 44))) {
                                    c2 = 'E';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 917340916:
                                if (str2.equals(A0B(46, 9, 81))) {
                                    c2 = '\b';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 958008161:
                                if (str2.equals(A0B(1367, 9, 74))) {
                                    c2 = '=';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1060579533:
                                if (str2.equals(A0B(1486, 8, 97))) {
                                    c2 = 'S';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1150207623:
                                if (str2.equals(A0B(624, 7, 121))) {
                                    c2 = 'C';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1176899427:
                                if (str2.equals(A0B(1359, 8, 21))) {
                                    c2 = '<';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1280332038:
                                if (str2.equals(A0B(1327, 7, 43))) {
                                    c2 = '3';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1306947716:
                                if (str2.equals(A0B(335, 10, 81))) {
                                    c2 = 30;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1349174697:
                                if (str2.equals(A0B(1313, 14, 16))) {
                                    c2 = '2';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1522194893:
                                if (str2.equals(A0B(1760, 7, 69))) {
                                    c2 = 'w';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1691543273:
                                if (str2.equals(A0B(230, 7, 69))) {
                                    c2 = 20;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1709443163:
                                if (str2.equals(A0B(1339, 14, 56))) {
                                    c2 = '9';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1865889110:
                                if (str2.equals(A0B(1572, 7, 45))) {
                                    c2 = 'g';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1906253259:
                                if (str2.equals(A0B(769, 8, 120))) {
                                    c2 = 'W';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 1977196784:
                                if (str2.equals(A0B(582, 12, 20))) {
                                    c2 = ':';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2006372676:
                                if (str2.equals(A0B(204, 14, 69))) {
                                    c2 = 16;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2029784656:
                                if (str2.equals(A0B(549, 7, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION))) {
                                    c2 = '4';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2030379515:
                                if (str2.equals(A0B(556, 7, 70))) {
                                    c2 = '5';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2033393791:
                                if (str2.equals(A0B(FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION, 12, 62))) {
                                    c2 = '\f';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2047190025:
                                if (str2.equals(A0B(304, 10, 42))) {
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2047252157:
                                if (str2.equals(A0B(314, 10, 18))) {
                                    c2 = 28;
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2048319463:
                                if (str2.equals(A0B(568, 7, 81))) {
                                    c2 = '6';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            case 2048855701:
                                if (str2.equals(A0B(575, 7, 95))) {
                                    c2 = '7';
                                    break;
                                }
                                c2 = 65535;
                                break;
                            default:
                                c2 = 65535;
                                break;
                        }
                        switch (c2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case '\b':
                            case '\t':
                            case '\n':
                            case 11:
                            case '\f':
                            case '\r':
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case ConnectionResult.API_DISABLED /* 23 */:
                            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                            case Constants.MAX_TREE_DEPTH /* 25 */:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case ' ':
                            case '!':
                            case '\"':
                            case '#':
                            case '$':
                            case '%':
                            case '&':
                            case '\'':
                            case '(':
                            case ')':
                            case '*':
                            case '+':
                            case ',':
                            case '-':
                            case '.':
                            case '/':
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                            case ':':
                            case ';':
                            case '<':
                            case '=':
                            case '>':
                            case '?':
                            case '@':
                            case 'A':
                            case 'B':
                            case 'C':
                            case 'D':
                            case 'E':
                            case 'F':
                            case 'G':
                            case 'H':
                            case 'I':
                            case 'J':
                            case 'K':
                            case 'L':
                            case 'M':
                            case 'N':
                            case 'O':
                            case 'P':
                            case 'Q':
                            case 'R':
                            case 'S':
                            case 'T':
                            case 'U':
                            case 'V':
                            case 'W':
                            case 'X':
                            case 'Y':
                            case 'Z':
                            case '[':
                            case '\\':
                            case ']':
                            case '^':
                            case '_':
                            case '`':
                            case 'a':
                            case 'b':
                            case 'c':
                            case AdSizeApi.INTERSTITIAL /* 100 */:
                            case FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS /* 101 */:
                            case 'f':
                            case FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT /* 103 */:
                            case FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION /* 104 */:
                            case FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS /* 105 */:
                            case FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE /* 106 */:
                            case FacebookMediationAdapter.ERROR_NULL_CONTEXT /* 107 */:
                            case FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS /* 108 */:
                            case FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD /* 109 */:
                            case FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD /* 110 */:
                            case FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION /* 111 */:
                            case 'p':
                            case 'q':
                            case 'r':
                            case 's':
                            case 't':
                            case 'u':
                            case 'v':
                            case 'w':
                            case 'x':
                            case 'y':
                            case 'z':
                            case '{':
                            case '|':
                            case '}':
                                A0y = true;
                                break;
                        }
                        String str3 = AbstractC2094gE.A06;
                        switch (str3.hashCode()) {
                            case -2038157993:
                                if (str3.equals(A0B(877, 12, 31))) {
                                    c = '\b';
                                    break;
                                }
                                c = 65535;
                                break;
                            case -2038157992:
                                if (str3.equals(A0B(889, 12, 112))) {
                                    c = 5;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1984447159:
                                if (str3.equals(A0B(719, 6, 4))) {
                                    c = 15;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1458559768:
                                if (str3.equals(A0B(705, 14, 12))) {
                                    c = 16;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1337484257:
                                if (str3.equals(A0B(148, 12, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT))) {
                                    c = 20;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1152053872:
                                if (str3.equals(A0B(998, 8, 80))) {
                                    c = 19;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1147076792:
                                if (str3.equals(A0B(631, 15, 73))) {
                                    c = 17;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -708142633:
                                if (str3.equals(A0B(869, 8, 114))) {
                                    c = 18;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -594534941:
                                if (str3.equals(A0B(597, 7, 100))) {
                                    c = 2;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -581948979:
                                if (str3.equals(A0B(1401, 7, 121))) {
                                    c = 11;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -401692983:
                                if (str3.equals(A0B(964, 8, 46))) {
                                    c = 23;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -399133966:
                                if (str3.equals(A0B(981, 8, 113))) {
                                    c = 7;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -154985182:
                                if (str3.equals(A0B(123, 15, 25))) {
                                    c = '\t';
                                    break;
                                }
                                c = 65535;
                                break;
                            case 2006354:
                                if (str3.equals(A0B(71, 4, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS))) {
                                    break;
                                }
                                c = 65535;
                                break;
                            case 2006367:
                                if (str3.equals(A0B(75, 4, 125))) {
                                    c = 1;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 81951059:
                                if (str3.equals(A0B(1123, 5, 116))) {
                                    c = 24;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 439365079:
                                if (str3.equals(A0B(535, 14, 32))) {
                                    c = 22;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 511748841:
                                if (str3.equals(A0B(972, 9, 52))) {
                                    c = '\f';
                                    break;
                                }
                                c = 65535;
                                break;
                            case 619782645:
                                if (str3.equals(A0B(89, 11, 75))) {
                                    c = 4;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 619782647:
                                if (str3.equals(A0B(100, 11, 82))) {
                                    c = 21;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 632760191:
                                if (str3.equals(A0B(989, 9, 85))) {
                                    c = 25;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 807317112:
                                if (str3.equals(A0B(610, 7, 75))) {
                                    c = 14;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 807374834:
                                if (str3.equals(A0B(617, 7, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION))) {
                                    c = 6;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1070811680:
                                if (str3.equals(A0B(646, 13, 19))) {
                                    c = '\r';
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1682560972:
                                if (str3.equals(A0B(79, 10, 42))) {
                                    c = 3;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1921424370:
                                if (str3.equals(A0B(1024, 13, 38))) {
                                    c = 26;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 2133907258:
                                if (str3.equals(A0B(659, 9, 96))) {
                                    c = '\n';
                                    break;
                                }
                                c = 65535;
                                break;
                            default:
                                c = 65535;
                                break;
                        }
                        switch (c) {
                            case 0:
                            case 1:
                            case 2:
                                A0y = true;
                                break;
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case '\b':
                            case '\t':
                            case '\n':
                            case 11:
                            case '\f':
                            case '\r':
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case ConnectionResult.API_DISABLED /* 23 */:
                            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                            case Constants.MAX_TREE_DEPTH /* 25 */:
                            case 26:
                                A0y = true;
                                break;
                        }
                    }
                }
                A0z = true;
            }
        }
        return A0y;
    }

    public static boolean A0v(boolean z, ZM zm, ZM zm2) {
        return zm.A0W.equals(zm2.A0W) && zm.A0F == zm2.A0F && (z || (zm.A0L == zm2.A0L && zm.A0A == zm2.A0A)) && AbstractC2094gE.A1E(zm.A0N, zm2.A0N);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1X() {
        super.A1X();
        this.A09 = 0;
        this.A0A = 0;
        this.A0B = 0;
        this.A0J = SystemClock.elapsedRealtime();
        this.A0P = SystemClock.elapsedRealtime() * 1000;
        if (this.A0v) {
            this.A0r.A0D();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1Y() {
        this.A0M = -9223372036854775807L;
        A0J();
        A0H();
        if (this.A0v) {
            this.A0r.A0E();
        }
        super.A1Y();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1Z() {
        this.A08 = -1;
        this.A06 = -1;
        this.A01 = -1.0f;
        this.A02 = -1.0f;
        this.A0R = -9223372036854775807L;
        this.A0O = -9223372036854775807L;
        this.A0C = 0;
        A0F();
        A0E();
        this.A0s.A08();
        this.A00 = null;
        this.A0j = false;
        this.A0A = 0;
        this.A0B = 0;
        A0G();
        try {
            super.A1Z();
        } finally {
            super.A0i.A02();
            this.A0t.A05(super.A0i);
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1a(long j, boolean z) throws EK {
        super.A1a(j, z);
        if (this.A0q.A0G()) {
            this.A0q.A09();
            throw null;
        }
        A0E();
        if (this.A0v) {
            C2128gn c2128gn = this.A0r;
            if (A11[0].charAt(18) == 'P') {
                throw new RuntimeException();
            }
            A11[0] = "I0UybRzxhz05UsWfQTuk5Ctxl58niJiW";
            c2128gn.A0C();
        }
        this.A0N = -9223372036854775807L;
        this.A0L = -9223372036854775807L;
        this.A0O = -9223372036854775807L;
        this.A0A = 0;
        this.A0B = 0;
        if (this.A0C != 0) {
            this.A0R = this.A0w[this.A0C - 1];
            this.A0C = 0;
        }
        if (z) {
            A0N();
        } else {
            this.A0M = -9223372036854775807L;
        }
        A0H();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1b(boolean z, boolean z2) throws EK {
        super.A1b(z, z2);
        this.A0j = A1V().A00;
        this.A0t.A06(super.A0i);
        this.A0s.A09();
        this.A0g = z2;
        this.A0i = false;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1c(ZM[] zmArr, long j, long j2) throws EK {
        if (this.A0R == -9223372036854775807L) {
            this.A0R = j2;
        } else {
            if (this.A0C == this.A0w.length) {
                AbstractC2055fb.A07(A0B(682, 23, 48), A0B(1069, 45, 59) + this.A0w[this.A0C - 1]);
            } else {
                this.A0C++;
            }
            this.A0w[this.A0C - 1] = j2;
            this.A0x[this.A0C - 1] = this.A0O;
        }
        super.A1c(zmArr, j, j2);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final int A1g(InterfaceC1691Yz interfaceC1691Yz, Z2 z2, ZM zm, ZM zm2) {
        if (MJ.A04(this.A11, zm.A0L, zm.A0A, zm2.A0L, zm2.A0A)) {
            return 0;
        }
        if (A21() && zm.A0W.equals(zm2.A0W) && zm.A0F == zm2.A0F) {
            return 1;
        }
        if (!A0v(z2.A04, zm, zm2) || zm2.A0L > this.A0W.A02 || zm2.A0A > this.A0W.A00 || A00(zm2) > this.A0W.A01) {
            return 0;
        }
        return zm.A0A(zm2) ? 1 : 3;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final int A1h(ZS zs, TO to, ZM zm) throws ZW {
        if (!A24(zm)) {
            return A01(zs, zm, super.A0l);
        }
        if (A11[0].charAt(18) == 'P') {
            throw new RuntimeException();
        }
        A11[5] = "QcszUsFUXpe8IYOI3eCl5U0UDPLgDPye";
        return 20;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final List<Z2> A1l(ZS zs, ZM zm, boolean z) throws ZW {
        return A0D(zs, zm, z);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1m() throws EK {
        super.A1m();
        this.A04 = 0;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1n() {
        try {
            super.A1n();
            this.A04 = 0;
            if (this.A0T != null) {
                if (this.A0U == this.A0T) {
                    this.A0U = null;
                }
                this.A0T.release();
                this.A0T = null;
            }
        } catch (Throwable th) {
            this.A04 = 0;
            Surface surface = this.A0T;
            String[] strArr = A11;
            if (strArr[2].charAt(5) != strArr[3].charAt(5)) {
                throw new RuntimeException();
            }
            A11[5] = "ynWAHKdve9ZDybWNqkJILMjZXiEG9saW";
            if (surface != null) {
                if (this.A0U == this.A0T) {
                    this.A0U = null;
                }
                this.A0T.release();
                this.A0T = null;
            }
            throw th;
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1q(long j) {
        super.A1q(j);
        this.A04--;
        while (this.A0C != 0 && j >= this.A0x[0]) {
            this.A0R = this.A0w[0];
            this.A0C--;
            System.arraycopy(this.A0w, 1, this.A0w, 0, this.A0C);
            System.arraycopy(this.A0x, 1, this.A0x, 0, this.A0C);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("for SR video effects support of MCM")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A1r(com.facebook.ads.redexgen.core.ZM r6) {
        /*
            r5 = this;
            boolean r0 = r5.A24(r6)
            r4 = 0
            if (r0 == 0) goto L39
            com.facebook.ads.redexgen.X.ZM r0 = r5.A0j
            if (r0 == 0) goto L31
            com.facebook.ads.redexgen.X.ZM r0 = r5.A0j
            java.lang.String r3 = r0.A0W
            r2 = 1645(0x66d, float:2.305E-42)
            r1 = 10
            r0 = 112(0x70, float:1.57E-43)
            java.lang.String r0 = A0B(r2, r1, r0)
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L31
            r0 = 1
        L20:
            if (r0 == 0) goto L33
            com.facebook.ads.redexgen.X.gU r0 = r5.A0q
            boolean r0 = r0.A0G()
            if (r0 == 0) goto L33
            com.facebook.ads.redexgen.X.gU r0 = r5.A0q
            r0.A0A()
            r0 = 0
            throw r0
        L31:
            r0 = 0
            goto L20
        L33:
            com.facebook.ads.redexgen.X.gU r0 = r5.A0q
            com.facebook.ads.redexgen.core.C2109gU.A05(r0, r4)
            return
        L39:
            com.facebook.ads.redexgen.X.Mo r0 = com.facebook.ads.redexgen.core.EnumC1388Mo.A09
            int r3 = com.facebook.ads.redexgen.core.MetaExoPlayerUpgradeConfig.A00(r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.C0T.A11
            r0 = 7
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 5
            if (r1 == r0) goto L65
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.C0T.A11
            java.lang.String r1 = "P2ZlpY0ERgZFsQcqSCQjVSg49sFfTOj4"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "w0kmHYOrlImNL7pz6PvFVWIP0ajPyIAa"
            r0 = 3
            r2[r0] = r1
            if (r3 <= 0) goto L64
            if (r6 == 0) goto L64
            int r0 = r6.A0L
            if (r0 <= r3) goto L64
            com.facebook.ads.redexgen.X.gU r0 = r5.A0q
            com.facebook.ads.redexgen.core.C2109gU.A05(r0, r4)
        L64:
            return
        L65:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C0T.A1r(com.facebook.ads.redexgen.X.ZM):void");
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1s(ZM zm) throws EK {
        super.A1s(zm);
        this.A0t.A09(zm, null);
        this.A02 = zm.A02;
        this.A0D = zm.A0F;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1t(ZM zm) throws EK {
        if (!this.A0q.A0G()) {
            this.A0q.A0J(zm, A1i());
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1u(C1637Ww c1637Ww) {
        this.A04++;
        this.A0O = Math.max(c1637Ww.A01, this.A0O);
        if (AbstractC2094gE.A02 < 23 && this.A0j) {
            A27();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0157 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0128  */
    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A1v(com.facebook.ads.redexgen.core.InterfaceC1691Yz r11, android.media.MediaFormat r12) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C0T.A1v(com.facebook.ads.redexgen.X.Yz, android.media.MediaFormat):void");
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    @MetaExoPlayerCustomizations({@MetaExoPlayerCustomization("D40834768: [FBLite][Video] Enable low latency decoding for older Android versions"), @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Google Platform Dav1d Testing with Low Latency Decoding D62649046")})
    public final void A1w(Z2 z2, InterfaceC1691Yz interfaceC1691Yz, ZM zm, MediaCrypto mediaCrypto) throws ZW {
        this.A0W = A0A(z2, zm, A1e());
        MediaFormat A08 = A08(zm, this.A0W, this.A0u, this.A0n);
        if (this.A0U == null) {
            AbstractC2011es.A08(A0r(z2));
            if (this.A0T == null) {
                this.A0T = DummySurface.A01(this.A0p, z2.A06);
            }
            Surface surface = this.A0T;
            if (A11[7].length() == 5) {
                throw new RuntimeException();
            }
            String[] strArr = A11;
            strArr[2] = "eTG1JY0Z0f8x3UejYi9ifF0jnc0dhtvD";
            strArr[3] = "VakliYhQ2UnOyXBlYXsFKcpxhQDYHw32";
            this.A0U = surface;
        }
        boolean z = this.A11.A0H;
        boolean z3 = false;
        String A0B = A0B(1390, 11, 83);
        boolean z4 = z && z2.A00 != null && z2.A00.isFeatureSupported(A0B);
        if (z2.A03.equals(A0B(1181, 28, 84))) {
            C1383Mg c1383Mg = this.A11;
            if (A11[0].charAt(18) == 'P') {
                throw new RuntimeException();
            }
            A11[7] = "KYkpr8EtMuI1xIjXVcRBgqNn";
            if (c1383Mg.A09) {
                z3 = true;
            }
        }
        if ((AbstractC2094gE.A02 >= 30 || this.A11.A0I) && z4 && !z3) {
            A08.setFeatureEnabled(A0B, true);
            if (A11[0].charAt(18) == 'P') {
                throw new RuntimeException();
            }
            String[] strArr2 = A11;
            strArr2[6] = "roSUikaxP4Y8yp0";
            strArr2[4] = "Aub9OVfL4jB7ssjAF";
            A08.setInteger(A0B, 1);
        }
        if (this.A0q.A0G()) {
            A08 = this.A0q.A06(A08);
        }
        if (this.A0q.A0G()) {
            this.A0q.A07();
            throw null;
        }
        interfaceC1691Yz.A4y(A08, this.A0U, mediaCrypto, 0, this.A0Y);
        int i = AbstractC2094gE.A02;
        if (A11[1].charAt(9) == 'z') {
            String[] strArr3 = A11;
            strArr3[6] = "VlR5SpAC9c46PUq";
            strArr3[4] = "qqt2lYC69MTWVt7g5";
            if (i < 23) {
                return;
            }
        } else if (i < 23) {
            return;
        }
        if (this.A0j) {
            this.A00 = new C1442Ox(this, interfaceC1691Yz);
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    @MetaExoPlayerCustomization("D45988204: [FBLite][Video] Add Codec Hooks for Logging")
    public final void A1x(String str) {
        this.A0t.A0F(str);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final void A1y(String str, long j, long j2) {
        this.A0t.A0G(str, j, j2);
        this.A0b = A0u(str);
        if (this.A0v) {
            this.A0q.A0E(str);
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "D60404164: Merge init calls in the renderer")
    public final void A1z(String str, ZM zm) throws EK {
        this.A0t.A0F(str);
        if (!this.A0q.A0G()) {
            this.A0q.A0J(zm, A1i());
        }
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final boolean A20() {
        return this.A0a && SystemClock.elapsedRealtime() - this.A0Q < 500;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final boolean A22() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0224, code lost:
    
        if (r6 >= 50000) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0228, code lost:
    
        A0a(r24, r38, r0, r16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x022f, code lost:
    
        r31.A0K = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0237, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0238, code lost:
    
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0239, code lost:
    
        r2 = com.facebook.ads.redexgen.core.C0T.A11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x024a, code lost:
    
        if (r2[2].charAt(5) != r2[3].charAt(5)) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0250, code lost:
    
        if (A0g() != false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0252, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0266, code lost:
    
        throw r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0253, code lost:
    
        r2 = com.facebook.ads.redexgen.core.C0T.A11;
        r2[2] = "8NvNAYpc0BoPNabeyDwODwJqz8UEKgP7";
        r2[3] = "yftWtYHfYXRkx0qg1LFYnmo7iQbYy25Y";
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0263, code lost:
    
        if (A0g() != false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x029b, code lost:
    
        r2 = r40 - r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02a4, code lost:
    
        if (r31.A0j.A01 == (-1.0f)) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02a6, code lost:
    
        r0 = r31.A0j.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x02aa, code lost:
    
        A0R(r32, r2, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02b2, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02b3, code lost:
    
        r0 = 30.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0270, code lost:
    
        if (r6 >= 30000) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0276, code lost:
    
        if (r6 <= 11000) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x027b, code lost:
    
        java.lang.Thread.sleep((r6 - 10000) / 1000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0281, code lost:
    
        java.lang.Thread.currentThread().interrupt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0288, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0289, code lost:
    
        A0X(r24, r38, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x028e, code lost:
    
        r31.A0K = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0291, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0292, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0297, code lost:
    
        if (A0g() != false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0299, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x029a, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01f4, code lost:
    
        r11 = 21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01e5, code lost:
    
        r14 = com.facebook.ads.redexgen.core.C0T.A11;
        r14[6] = "pIP5j6ZBfwk5vry";
        r14[4] = "SYbytyslPAjChX5NL";
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x01f1, code lost:
    
        if (r15 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x016c, code lost:
    
        if (r32 == r9) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b4, code lost:
    
        if (r12 != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b6, code lost:
    
        r7 = 21;
        r2 = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00dc, code lost:
    
        if (r12 != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0160, code lost:
    
        if (r32 == r9) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x016f, code lost:
    
        r6 = r6 - (r15 - r34);
        r18 = java.lang.System.nanoTime();
        r11 = r18 + (r6 * 1000);
        r15 = com.facebook.ads.redexgen.core.C0T.A11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0192, code lost:
    
        if (r15[2].charAt(5) == r15[3].charAt(5)) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0199, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x019a, code lost:
    
        com.facebook.ads.redexgen.core.C0T.A11[1] = "mX3HKsb00zQ0Yr0eh5Uruiqbpk7IBAqe";
        r16 = r31.A0s.A07(r40, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01ad, code lost:
    
        if (r31.A0q.A0G() != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01af, code lost:
    
        r6 = (r16 - r18) / 1000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01b3, code lost:
    
        r15 = A0n(r6, r34);
        r14 = com.facebook.ads.redexgen.core.C0T.A11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01c7, code lost:
    
        if (r14[6].length() == r14[4].length()) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01c9, code lost:
    
        com.facebook.ads.redexgen.core.C0T.A11[0] = "4zdnle4o5j0FE7iP1bblazp6pRjlKfuq";
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01d0, code lost:
    
        if (r15 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01d2, code lost:
    
        r11 = 21;
        r24 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01e2, code lost:
    
        if (A0q(r24, r38, r0, r32) == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01e4, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01fa, code lost:
    
        if (A0o(r6, r34) == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01fc, code lost:
    
        A0W(r24, r38, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0202, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0209, code lost:
    
        if (r31.A0q.A0G() == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x020b, code lost:
    
        r31.A0q.A0B(r32, r34);
        r31.A0q.A0K(r31.A0j, r0, r43);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x021a, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x021d, code lost:
    
        if (com.facebook.ads.redexgen.core.AbstractC2094gE.A02 < r11) goto L123;
     */
    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A23(long r32, long r34, com.facebook.ads.redexgen.core.InterfaceC1691Yz r36, java.nio.ByteBuffer r37, int r38, int r39, long r40, boolean r42, boolean r43) throws com.facebook.ads.redexgen.core.EK {
        /*
            Method dump skipped, instructions count: 694
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C0T.A23(long, long, com.facebook.ads.redexgen.X.Yz, java.nio.ByteBuffer, int, int, long, boolean, boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10
    public final boolean A25(Z2 z2) {
        return (this.A0U != null && (this.A0Z || this.A0U.isValid())) || A0r(z2);
    }

    public final Pair<ColorInfo, ColorInfo> A26(ColorInfo colorInfo) {
        if (!ColorInfo.A09(colorInfo)) {
            return Pair.create(ColorInfo.A09, ColorInfo.A09);
        }
        if (colorInfo.A03 == 7) {
            return Pair.create(colorInfo, colorInfo.A0A().A02(6).A03());
        }
        return Pair.create(colorInfo, colorInfo);
    }

    public final void A27() {
        this.A0i = true;
        if (!this.A0h) {
            this.A0h = true;
            this.A0t.A0D(this.A0U);
        }
    }

    @MetaExoPlayerCustomization("Required for VideoProcessorManager migration")
    public final boolean A28(long j, long j2, boolean z) {
        return A0k(j) && !z;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1191Et, com.facebook.ads.redexgen.core.QS
    public final void A9Y(int i, Object obj) throws EK {
        if (i == 1) {
            A0U((Surface) obj);
            return;
        }
        if (i == 4) {
            this.A0H = ((Integer) obj).intValue();
            InterfaceC1691Yz A1j = A1j();
            if (A1j == null) {
                return;
            }
            A1j.AIy(this.A0H);
            return;
        }
        if (i == 7) {
            this.A0X = (InterfaceC2123gi) obj;
            return;
        }
        if (i == 10001) {
            A0f(obj);
            return;
        }
        if (i == 13) {
            this.A0q.A0F((List) AbstractC2011es.A01(obj));
            return;
        }
        String[] strArr = A11;
        if (strArr[6].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        A11[5] = "Jx05LvFPfjBDIELAnIFdUSoDRhvrfVls";
        if (i == 14) {
            C2077fx c2077fx = (C2077fx) AbstractC2011es.A01(obj);
            if (c2077fx.A03() == 0 || c2077fx.A02() == 0 || this.A0U == null) {
                return;
            }
            C2109gU c2109gU = this.A0q;
            String[] strArr2 = A11;
            if (strArr2[2].charAt(5) != strArr2[3].charAt(5)) {
                c2109gU.A0C(this.A0U, c2077fx);
                return;
            }
            String[] strArr3 = A11;
            strArr3[6] = "SvlqXFqKcpo7z8I";
            strArr3[4] = "Eg1jmv6OW92Zroxh5";
            c2109gU.A0C(this.A0U, c2077fx);
            return;
        }
        super.A9Y(i, obj);
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.InterfaceC1682Yq
    public final boolean AAE() {
        boolean AAE = super.AAE();
        boolean isEnded = this.A0q.A0G();
        if (isEnded) {
            boolean isEnded2 = this.A0q.A0I();
            return AAE & isEnded2;
        }
        return AAE;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.InterfaceC1682Yq
    @MetaExoPlayerCustomization("D18870411: Adding start stall debug reason")
    public final boolean AAT() {
        if (super.AAT() && !this.A0h && ((this.A0T == null || this.A0U != this.A0T) && A1j() != null && !this.A0j)) {
            ((AbstractC1191Et) this).A0B = MI.A08;
        }
        if (!super.AAT() || ((this.A0q.A0G() && !this.A0q.A0H()) || !(this.A0h || ((this.A0T != null && this.A0U == this.A0T) || A1j() == null || this.A0j)))) {
            if (this.A0M == -9223372036854775807L) {
                return false;
            }
            if (SystemClock.elapsedRealtime() < this.A0M) {
                return true;
            }
            this.A0M = -9223372036854775807L;
            return false;
        }
        this.A0M = -9223372036854775807L;
        if (A11[5].charAt(17) == 'C') {
            throw new RuntimeException();
        }
        String[] strArr = A11;
        strArr[6] = "uTJdMB2Jd3DbzLm";
        strArr[4] = "Vh5Zhx5fq1hbkzod2";
        return true;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass10, com.facebook.ads.redexgen.core.InterfaceC1682Yq
    public final void AHd(long j, long j2) throws EK {
        super.AHd(j, j2);
        if (this.A0q.A0G()) {
            this.A0q.A0B(j, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1682Yq, com.facebook.ads.redexgen.core.InterfaceC1477Qi
    public final String getName() {
        return A0B(682, 23, 48);
    }
}
