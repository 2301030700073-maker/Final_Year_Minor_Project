package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.Profile;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.Utility;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.firebase.analytics.connector.internal.AnalyticsConnectorRegistrar;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC3306m1;
import defpackage.InterfaceC0634Yo;
import defpackage.InterfaceC0642Za;
import j$.util.DesugarCollections;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import org.json.JSONObject;

@KeepForSdk
/* renamed from: Kc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C0315Kc implements InterfaceC3328mN, Utility.GraphMeRequestWithCacheCallback, InterfaceC0598Xa, InterfaceC3314m9, NF {

    /* renamed from: do, reason: not valid java name */
    public static final C0174Dp f1827do = new C0174Dp("RESUME_TOKEN", 7);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f1829do = new int[0];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object[] f1830do = new Object[0];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0315Kc f1828do = new C0315Kc();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[][] f1832do = {new int[]{27, 917}, new int[]{522, 568, 723, 809}, new int[]{237, 308, 436, 284, 646, 653, 428, 379}, new int[]{274, 562, 232, 755, 599, 524, 801, 132, 295, 116, 442, 428, 295, 42, 176, 65}, new int[]{361, 575, 922, 525, 176, 586, 640, 321, 536, 742, 677, 742, 687, 284, 193, 517, 273, 494, 263, 147, 593, 800, 571, 320, 803, 133, 231, 390, 685, 330, 63, 410}, new int[]{539, 422, 6, 93, 862, 771, 453, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, 610, 287, FacebookMediationAdapter.ERROR_NULL_CONTEXT, 505, 733, 877, 381, 612, 723, 476, 462, 172, 430, 609, 858, 822, 543, 376, 511, 400, 672, 762, 283, 184, 440, 35, 519, 31, 460, 594, 225, 535, 517, 352, 605, 158, 651, 201, 488, 502, 648, 733, 717, 83, 404, 97, 280, 771, 840, 629, 4, 381, 843, 623, 264, 543}, new int[]{521, 310, 864, 547, 858, 580, 296, 379, 53, 779, 897, 444, 400, 925, 749, 415, 822, 93, 217, 208, 928, 244, 583, 620, 246, 148, 447, 631, 292, 908, 490, 704, 516, 258, 457, 907, 594, 723, 674, 292, 272, 96, 684, 432, 686, 606, 860, 569, 193, 219, 129, 186, 236, 287, 192, 775, 278, 173, 40, 379, 712, 463, 646, 776, 171, 491, 297, 763, 156, 732, 95, 270, 447, 90, 507, 48, 228, 821, 808, 898, 784, 663, 627, 378, 382, 262, 380, 602, 754, 336, 89, 614, 87, 432, 670, 616, 157, 374, 242, 726, 600, 269, 375, 898, 845, 454, 354, 130, 814, 587, 804, 34, 211, 330, 539, 297, 827, 865, 37, 517, 834, 315, 550, 86, 801, 4, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, 539}, new int[]{524, 894, 75, 766, 882, 857, 74, 204, 82, 586, 708, 250, 905, 786, 138, 720, 858, 194, 311, 913, 275, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 375, 850, 438, 733, 194, 280, 201, 280, 828, 757, 710, 814, 919, 89, 68, 569, 11, 204, 796, 605, 540, 913, 801, 700, 799, 137, 439, 418, 592, 668, 353, 859, 370, 694, 325, 240, 216, 257, 284, 549, 209, 884, 315, 70, 329, 793, 490, 274, 877, 162, 749, 812, 684, 461, 334, 376, 849, 521, 307, 291, 803, 712, 19, 358, 399, 908, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT, 511, 51, 8, 517, 225, 289, 470, 637, 731, 66, 255, 917, 269, 463, 830, 730, 433, 848, 585, 136, 538, 906, 90, 2, 290, 743, 199, 655, 903, 329, 49, 802, 580, 355, 588, 188, 462, 10, 134, 628, 320, 479, 130, 739, 71, 263, 318, 374, 601, 192, 605, 142, 673, 687, 234, 722, 384, 177, 752, 607, 640, 455, 193, 689, 707, 805, 641, 48, 60, 732, 621, 895, 544, 261, 852, 655, 309, 697, 755, 756, 60, 231, 773, 434, 421, 726, 528, 503, 118, 49, 795, 32, 144, 500, 238, 836, 394, 280, 566, 319, 9, 647, 550, 73, 914, 342, 126, 32, 681, 331, 792, 620, 60, 609, 441, 180, 791, 893, 754, 605, 383, 228, 749, 760, 213, 54, 297, 134, 54, 834, 299, 922, 191, 910, 532, 609, 829, 189, 20, 167, 29, 872, 449, 83, 402, 41, 656, 505, 579, 481, 173, 404, 251, 688, 95, 497, 555, 642, 543, 307, 159, 924, 558, 648, 55, 497, 10}, new int[]{352, 77, 373, 504, 35, 599, 428, 207, 409, 574, 118, 498, 285, 380, 350, 492, 197, 265, 920, 155, 914, 299, 229, 643, 294, 871, 306, 88, 87, 193, 352, 781, 846, 75, 327, 520, 435, 543, 203, 666, 249, 346, 781, 621, 640, 268, 794, 534, 539, 781, 408, 390, 644, 102, 476, 499, 290, 632, 545, 37, 858, 916, 552, 41, 542, 289, 122, 272, 383, 800, 485, 98, 752, 472, 761, FacebookMediationAdapter.ERROR_NULL_CONTEXT, 784, 860, 658, 741, 290, 204, 681, 407, 855, 85, 99, 62, 482, 180, 20, 297, 451, 593, 913, 142, 808, 684, 287, 536, 561, 76, 653, 899, 729, 567, 744, 390, 513, 192, 516, 258, 240, 518, 794, 395, 768, 848, 51, 610, 384, 168, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 826, 328, 596, 786, 303, 570, 381, 415, 641, 156, 237, 151, 429, 531, 207, 676, 710, 89, 168, 304, 402, 40, 708, 575, 162, 864, 229, 65, 861, 841, AdRequest.MAX_CONTENT_URL_LENGTH, 164, 477, 221, 92, 358, 785, 288, 357, 850, 836, 827, 736, 707, 94, 8, 494, 114, 521, 2, 499, 851, 543, 152, 729, 771, 95, 248, 361, 578, 323, 856, 797, 289, 51, 684, 466, 533, 820, 669, 45, 902, 452, 167, 342, 244, 173, 35, 463, 651, 51, 699, 591, 452, 578, 37, 124, 298, 332, 552, 43, 427, 119, 662, 777, 475, 850, 764, 364, 578, 911, 283, 711, 472, 420, 245, 288, 594, 394, 511, 327, 589, 777, 699, 688, 43, 408, 842, 383, 721, 521, 560, 644, 714, 559, 62, 145, 873, 663, 713, 159, 672, 729, 624, 59, 193, 417, 158, 209, 563, 564, 343, 693, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD, 608, 563, 365, 181, 772, 677, 310, 248, 353, 708, 410, 579, 870, 617, 841, 632, 860, 289, 536, 35, 777, 618, 586, 424, 833, 77, 597, 346, 269, 757, 632, 695, 751, 331, 247, 184, 45, 787, 680, 18, 66, 407, 369, 54, 492, 228, 613, 830, 922, 437, 519, 644, 905, 789, 420, 305, 441, 207, 300, 892, 827, 141, 537, 381, 662, 513, 56, 252, FacebookRequestErrorClassification.EC_TOO_MANY_USER_ACTION_CALLS, 242, 797, 838, 837, 720, 224, 307, 631, 61, 87, 560, 310, 756, 665, 397, 808, 851, 309, 473, 795, 378, 31, 647, 915, 459, 806, 590, 731, 425, 216, 548, 249, 321, 881, 699, 535, 673, 782, 210, 815, 905, 303, 843, 922, 281, 73, 469, 791, 660, 162, 498, 308, 155, 422, 907, 817, 187, 62, 16, 425, 535, 336, 286, 437, 375, 273, 610, 296, 183, 923, 116, 667, 751, 353, 62, 366, 691, 379, 687, 842, 37, 357, 720, 742, 330, 5, 39, 923, 311, 424, 242, 749, 321, 54, 669, 316, 342, 299, 534, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS, 667, 488, 640, 672, 576, 540, 316, 486, 721, 610, 46, 656, 447, 171, 616, 464, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 531, 297, 321, 762, 752, 533, 175, 134, 14, 381, 433, 717, 45, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION, 20, 596, 284, 736, 138, 646, 411, 877, 669, 141, 919, 45, 780, 407, 164, 332, 899, 165, 726, 600, 325, 498, 655, 357, 752, 768, 223, 849, 647, 63, 310, 863, 251, 366, 304, 282, 738, 675, 410, 389, 244, 31, 121, 303, 263}};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final int[] f1837if = {R.attr.buttonSize, R.attr.colorScheme, R.attr.scopeUris};

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final int[] f1834for = {android.R.attr.minWidth, android.R.attr.minHeight, R.attr.cardBackgroundColor, R.attr.cardCornerRadius, R.attr.cardElevation, R.attr.cardMaxElevation, R.attr.cardPreventCornerOverlap, R.attr.cardUseCompatPadding, R.attr.contentPadding, R.attr.contentPaddingBottom, R.attr.contentPaddingLeft, R.attr.contentPaddingRight, R.attr.contentPaddingTop};

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static final int[] f1840new = {android.R.attr.name, android.R.attr.id, android.R.attr.tag};

    /* renamed from: try, reason: not valid java name */
    public static final int[] f1842try = {android.R.attr.name, android.R.attr.tag};

    /* renamed from: if, reason: not valid java name */
    public static final C0315Kc f1836if = new C0315Kc();

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ C0315Kc f1833for = new C0315Kc();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f1831do = {"ga_conversion", "engagement_time_msec", "exposure_time", "ad_event_id", "ad_unit_id", "ga_error", "ga_error_value", "ga_error_length", "ga_event_origin", "ga_screen", "ga_screen_class", "ga_screen_id", "ga_previous_screen", "ga_previous_class", "ga_previous_id", "manual_tracking", "message_device_time", "message_id", "message_name", "message_time", "message_tracking_id", "message_type", "previous_app_version", "previous_os_version", "topic", "update_with_analytics", "previous_first_open_count", "system_app", "system_app_update", "previous_install_count", "ga_event_id", "ga_extra_params_ct", "ga_group_name", "ga_list_length", "ga_index", "ga_event_name", "campaign_info_source", "cached_campaign", "deferred_analytics_collection", "ga_session_number", "ga_session_id", "campaign_extra_referrer", "app_in_background", "firebase_feature_rollouts", "firebase_conversion", "firebase_error", "firebase_error_value", "firebase_error_length", "firebase_event_origin", "firebase_screen", "firebase_screen_class", "firebase_screen_id", "firebase_previous_screen", "firebase_previous_class", "firebase_previous_id", "session_number", "session_id"};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final String[] f1838if = {"_c", "_et", "_xt", "_aeid", "_ai", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_mst", "_ndt", "_nmid", "_nmn", "_nmt", "_nmtid", "_nmc", "_pv", "_po", "_nt", "_uwa", "_pfo", "_sys", "_sysu", "_pin", "_eid", "_epc", "_gn", "_ll", "_i", "_en", "_cis", "_cc", "_dac", "_sno", "_sid", "_cer", "_aib", "_ffr", "_c", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_sno", "_sid"};

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final String[] f1835for = {"items"};

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static final String[] f1841new = {"affiliation", "coupon", "creative_name", "creative_slot", "currency", "discount", "index", "item_id", "item_brand", "item_category", "item_category2", "item_category3", "item_category4", "item_category5", "item_list_name", "item_list_id", "item_name", "item_variant", "location_id", "payment_type", "price", "promotion_id", "promotion_name", "quantity", "shipping", "shipping_tier", "tax", "transaction_id", "value", "item_list", "checkout_step", "checkout_option", "item_location_id"};

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ C0315Kc f1839new = new C0315Kc();

    /* renamed from: abstract, reason: not valid java name */
    public static int m1153abstract(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    /* renamed from: break, reason: not valid java name */
    public static void m1154break(int i, Object[] objArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (objArr[i2] == null) {
                StringBuilder sb = new StringBuilder(20);
                sb.append("at index ");
                sb.append(i2);
                throw new NullPointerException(sb.toString());
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static int m1155case(long[] jArr, int i, long j) {
        int i2 = i - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            long j2 = jArr[i4];
            if (j2 < j) {
                i3 = i4 + 1;
            } else {
                if (j2 <= j) {
                    return i4;
                }
                i2 = i4 - 1;
            }
        }
        return ~i3;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m1156catch(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m1157class(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(m1168if(i, i2, "index"));
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m1158const(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? m1168if(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m1168if(i2, i3, "end index") : O2.m1582class("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public static int m1159continue(Object obj) {
        return m1153abstract(obj == null ? 0 : obj.hashCode());
    }

    /* renamed from: default, reason: not valid java name */
    public static final Object m1160default(Object obj, Object obj2) {
        if (obj == null) {
            return obj2;
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(obj2);
            return obj;
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(obj2);
        return arrayList;
    }

    /* renamed from: do, reason: not valid java name */
    public static C0162Dd m1161do(C0532Ua c0532Ua, InterfaceC3641rk interfaceC3641rk) {
        InterfaceC3161jb m7272do = C3220kb.m7272do(c0532Ua.mo2424try(), C0405Of.f2659do, true);
        C3752td c3752td = C0185Ee.f871do;
        if (m7272do != c3752td && m7272do.mo814new(InterfaceC0642Za.Cdo.f4868do) == null) {
            m7272do = m7272do.k(c3752td);
        }
        C0162Dd c0162Dd = new C0162Dd(m7272do, true);
        c0162Dd.x(1, c0162Dd, interfaceC3641rk);
        return c0162Dd;
    }

    /* renamed from: else, reason: not valid java name */
    public static final void m1162else(InterfaceC2650dk interfaceC2650dk, Object obj, InterfaceC3161jb interfaceC3161jb) {
        ZE m1167goto = m1167goto(interfaceC2650dk, obj, null);
        if (m1167goto != null) {
            C3515pb.m7796do(interfaceC3161jb, m1167goto);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static byte[] m1163extends(InputStream inputStream, int i) {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read < 0) {
                throw new IllegalStateException(V1.m2494case("Not enough bytes to read: ", i));
            }
            i2 += read;
        }
        return bArr;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m1164final(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005b, code lost:
    
        if (r0.finished() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0060, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0068, code lost:
    
        throw new java.lang.IllegalStateException("Inflater did not finish");
     */
    /* renamed from: finally, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m1165finally(java.io.FileInputStream r8, int r9, int r10) {
        /*
            java.util.zip.Inflater r0 = new java.util.zip.Inflater
            r0.<init>()
            byte[] r1 = new byte[r10]     // Catch: java.lang.Throwable -> L88
            r2 = 2048(0x800, float:2.87E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L88
            r3 = 0
            r4 = 0
            r5 = 0
        Le:
            boolean r6 = r0.finished()     // Catch: java.lang.Throwable -> L88
            if (r6 != 0) goto L55
            boolean r6 = r0.needsDictionary()     // Catch: java.lang.Throwable -> L88
            if (r6 != 0) goto L55
            if (r4 >= r9) goto L55
            int r6 = r8.read(r2)     // Catch: java.lang.Throwable -> L88
            if (r6 < 0) goto L39
            r0.setInput(r2, r3, r6)     // Catch: java.lang.Throwable -> L88
            int r7 = r10 - r5
            int r7 = r0.inflate(r1, r5, r7)     // Catch: java.util.zip.DataFormatException -> L2e java.lang.Throwable -> L88
            int r5 = r5 + r7
            int r4 = r4 + r6
            goto Le
        L2e:
            r8 = move-exception
            java.lang.String r8 = r8.getMessage()     // Catch: java.lang.Throwable -> L88
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L88
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L88
            throw r9     // Catch: java.lang.Throwable -> L88
        L39:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L88
            r8.<init>()     // Catch: java.lang.Throwable -> L88
            java.lang.String r10 = "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "
            r8.append(r10)     // Catch: java.lang.Throwable -> L88
            r8.append(r9)     // Catch: java.lang.Throwable -> L88
            java.lang.String r9 = " bytes"
            r8.append(r9)     // Catch: java.lang.Throwable -> L88
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L88
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L88
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L88
            throw r9     // Catch: java.lang.Throwable -> L88
        L55:
            if (r4 != r9) goto L69
            boolean r8 = r0.finished()     // Catch: java.lang.Throwable -> L88
            if (r8 == 0) goto L61
            r0.end()
            return r1
        L61:
            java.lang.String r8 = "Inflater did not finish"
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L88
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L88
            throw r9     // Catch: java.lang.Throwable -> L88
        L69:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L88
            r8.<init>()     // Catch: java.lang.Throwable -> L88
            java.lang.String r10 = "Didn't read enough bytes during decompression. expected="
            r8.append(r10)     // Catch: java.lang.Throwable -> L88
            r8.append(r9)     // Catch: java.lang.Throwable -> L88
            java.lang.String r9 = " actual="
            r8.append(r9)     // Catch: java.lang.Throwable -> L88
            r8.append(r4)     // Catch: java.lang.Throwable -> L88
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L88
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L88
            r9.<init>(r8)     // Catch: java.lang.Throwable -> L88
            throw r9     // Catch: java.lang.Throwable -> L88
        L88:
            r8 = move-exception
            r0.end()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0315Kc.m1165finally(java.io.FileInputStream, int, int):byte[]");
    }

    /* renamed from: for, reason: not valid java name */
    public static int m1166for(int[] iArr, int i, int i2) {
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else {
                if (i6 <= i2) {
                    return i5;
                }
                i3 = i5 - 1;
            }
        }
        return ~i4;
    }

    /* renamed from: goto, reason: not valid java name */
    public static final ZE m1167goto(InterfaceC2650dk interfaceC2650dk, Object obj, ZE ze) {
        try {
            interfaceC2650dk.mo364this(obj);
        } catch (Throwable th) {
            if (ze == null || ze.getCause() == th) {
                return new ZE("Exception in undelivered element handler for " + obj, th);
            }
            C3850vF.m8451for(ze, th);
        }
        return ze;
    }

    /* renamed from: if, reason: not valid java name */
    public static String m1168if(int i, int i2, String str) {
        if (i < 0) {
            return O2.m1582class("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return O2.m1582class("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: import, reason: not valid java name */
    public static byte[] m1169import(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (Throwable th) {
            deflater.end();
            throw th;
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m1170interface(ByteArrayOutputStream byteArrayOutputStream, long j, int i) {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) ((j >> (i2 * 8)) & 255);
        }
        byteArrayOutputStream.write(bArr);
    }

    /* renamed from: native, reason: not valid java name */
    public static String m1171native(AbstractC3429o6 abstractC3429o6) {
        StringBuilder sb = new StringBuilder(abstractC3429o6.size());
        for (int i = 0; i < abstractC3429o6.size(); i++) {
            byte mo7686try = abstractC3429o6.mo7686try(i);
            if (mo7686try == 34) {
                sb.append("\\\"");
            } else if (mo7686try == 39) {
                sb.append("\\'");
            } else if (mo7686try != 92) {
                switch (mo7686try) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (mo7686try < 32 || mo7686try > 126) {
                            sb.append('\\');
                            sb.append((char) (((mo7686try >>> 6) & 3) + 48));
                            sb.append((char) (((mo7686try >>> 3) & 7) + 48));
                            sb.append((char) ((mo7686try & 7) + 48));
                            break;
                        } else {
                            sb.append((char) mo7686try);
                            break;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    /* renamed from: package, reason: not valid java name */
    public static long m1172package(InputStream inputStream, int i) {
        byte[] m1163extends = m1163extends(inputStream, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j += (m1163extends[i2] & 255) << (i2 * 8);
        }
        return j;
    }

    /* renamed from: private, reason: not valid java name */
    public static int m1173private(InputStream inputStream) {
        return (int) m1172package(inputStream, 2);
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m1174protected(ByteArrayOutputStream byteArrayOutputStream, int i) {
        m1170interface(byteArrayOutputStream, i, 2);
    }

    /* renamed from: public, reason: not valid java name */
    public static final void m1175public(InterfaceC3161jb interfaceC3161jb, Throwable th) {
        Throwable runtimeException;
        Iterator<InterfaceC3397nb> it = C3456ob.f14811do.iterator();
        while (it.hasNext()) {
            try {
                it.next().mo1734package(interfaceC3161jb, th);
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    C3850vF.m8451for(runtimeException, th);
                }
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, runtimeException);
            }
        }
        try {
            C3850vF.m8451for(th, new C3282le(interfaceC3161jb));
        } catch (Throwable unused) {
        }
        Thread currentThread2 = Thread.currentThread();
        currentThread2.getUncaughtExceptionHandler().uncaughtException(currentThread2, th);
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m1176return(String str) {
        AbstractC3306m1.Cnew cnew = ZL.f4805do;
        Set<A9> unmodifiableSet = DesugarCollections.unmodifiableSet(AbstractC3306m1.f14292do);
        HashSet hashSet = new HashSet();
        for (A9 a9 : unmodifiableSet) {
            if (a9.mo45do().equals(str)) {
                hashSet.add(a9);
            }
        }
        if (hashSet.isEmpty()) {
            throw new RuntimeException("Unknown feature ".concat(str));
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((A9) it.next()).mo46if()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: static, reason: not valid java name */
    public static UE m1177static(InterfaceC3632rb interfaceC3632rb, InterfaceC3641rk interfaceC3641rk) {
        InterfaceC3161jb m7272do = C3220kb.m7272do(interfaceC3632rb.mo2424try(), C0405Of.f2659do, true);
        C3752td c3752td = C0185Ee.f871do;
        if (m7272do != c3752td && m7272do.mo814new(InterfaceC0642Za.Cdo.f4868do) == null) {
            m7272do = m7272do.k(c3752td);
        }
        UE ue = new UE(m7272do, true);
        ue.x(1, ue, interfaceC3641rk);
        return ue;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static final Map m1178strictfp(Map map) {
        C0173Do.m401try(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map singletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        C0173Do.m399new(singletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return singletonMap;
    }

    /* renamed from: super, reason: not valid java name */
    public static float m1179super(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    /* renamed from: switch, reason: not valid java name */
    public static final int m1180switch(int i) {
        return i < 0 ? i : i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m1181this(int i, int i2) {
        String m1582class;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                m1582class = O2.m1582class("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else {
                if (i2 < 0) {
                    StringBuilder sb = new StringBuilder(26);
                    sb.append("negative size: ");
                    sb.append(i2);
                    throw new IllegalArgumentException(sb.toString());
                }
                m1582class = O2.m1582class("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(m1582class);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m1182throw(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m1183throws(AnimatorSet animatorSet, ArrayList arrayList) {
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            Animator animator = (Animator) arrayList.get(i);
            j = Math.max(j, animator.getDuration() + animator.getStartDelay());
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
        ofInt.setDuration(j);
        arrayList.add(0, ofInt);
        animatorSet.playTogether(arrayList);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static final Object m1184volatile(AbstractC0620Ya abstractC0620Ya, InterfaceC3161jb interfaceC3161jb, InterfaceC3641rk interfaceC3641rk) {
        InterfaceC3161jb mo2221if = abstractC0620Ya.mo2221if();
        boolean z = false;
        InterfaceC3161jb k = !((Boolean) interfaceC3161jb.mo815strictfp(Boolean.FALSE, C3279lb.f14170do)).booleanValue() ? mo2221if.k(interfaceC3161jb) : C3220kb.m7272do(mo2221if, interfaceC3161jb, false);
        InterfaceC0634Yo interfaceC0634Yo = (InterfaceC0634Yo) k.mo814new(InterfaceC0634Yo.Cif.f4763do);
        if (interfaceC0634Yo != null && !interfaceC0634Yo.mo2955for()) {
            throw interfaceC0634Yo.mo2956goto();
        }
        if (k == mo2221if) {
            KB kb = new KB(abstractC0620Ya, k);
            return C3645ro.m8022volatile(kb, kb, interfaceC3641rk);
        }
        InterfaceC0642Za.Cdo cdo = InterfaceC0642Za.Cdo.f4868do;
        if (C0173Do.m394do(k.mo814new(cdo), mo2221if.mo814new(cdo))) {
            C2744fJ c2744fJ = new C2744fJ(abstractC0620Ya, k);
            InterfaceC3161jb interfaceC3161jb2 = ((Cgoto) c2744fJ).f13216do;
            Object m6541for = C2683eH.m6541for(interfaceC3161jb2, null);
            try {
                return C3645ro.m8022volatile(c2744fJ, c2744fJ, interfaceC3641rk);
            } finally {
                C2683eH.m6540do(interfaceC3161jb2, m6541for);
            }
        }
        C0097Ae c0097Ae = new C0097Ae(abstractC0620Ya, k);
        try {
            C3850vF.m8458return(C3645ro.m8008package(C3645ro.m8023while(c0097Ae, c0097Ae, interfaceC3641rk)), C3206kJ.f13965do, null);
            while (true) {
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C0097Ae.f113do;
                int i = atomicIntegerFieldUpdater.get(c0097Ae);
                if (i != 0) {
                    if (i != 2) {
                        throw new IllegalStateException("Already suspended".toString());
                    }
                } else if (atomicIntegerFieldUpdater.compareAndSet(c0097Ae, 0, 1)) {
                    z = true;
                    break;
                }
            }
            if (z) {
                return EnumC3750tb.COROUTINE_SUSPENDED;
            }
            Object m1626synchronized = O4.m1626synchronized(c0097Ae.c());
            if (m1626synchronized instanceof U8) {
                throw ((U8) m1626synchronized).f3839do;
            }
            return m1626synchronized;
        } catch (Throwable th) {
            c0097Ae.mo1746while(C3645ro.m8004import(th));
            throw th;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static final void m1185while(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                C3850vF.m8451for(th, th2);
            }
        }
    }

    @Override // defpackage.InterfaceC3328mN
    /* renamed from: new */
    public C3899w5 mo270new(String str, K4 k4, EnumMap enumMap) {
        InterfaceC3328mN c0570Vq;
        switch (k4.ordinal()) {
            case 0:
                c0570Vq = new C0570Vq(17);
                break;
            case 1:
                c0570Vq = new C3195k8();
                break;
            case 2:
                c0570Vq = new C3431o8();
                break;
            case 3:
                c0570Vq = new C3549q8();
                break;
            case 4:
                c0570Vq = new C3313m8();
                break;
            case 5:
                c0570Vq = new C0820cd(19);
                break;
            case 6:
                c0570Vq = new C3695sf();
                break;
            case 7:
                c0570Vq = new C3636rf();
                break;
            case 8:
                c0570Vq = new C0522Tm();
                break;
            case 9:
            case 12:
            case 13:
            default:
                throw new IllegalArgumentException("No encoder available for format ".concat(String.valueOf(k4)));
            case 10:
                c0570Vq = new LQ(9);
                break;
            case 11:
                c0570Vq = new CQ(16);
                break;
            case 14:
                c0570Vq = new C3576qd(5);
                break;
            case 15:
                c0570Vq = new C0684aJ();
                break;
        }
        return c0570Vq.mo270new(str, k4, enumMap);
    }

    @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
    public void onFailure(C3344mh c3344mh) {
        C0173Do.m397goto(c3344mh, "Got unexpected exception: ");
    }

    @Override // com.facebook.internal.Utility.GraphMeRequestWithCacheCallback
    public void onSuccess(JSONObject jSONObject) {
        String optString = jSONObject == null ? null : jSONObject.optString("id");
        if (optString == null) {
            return;
        }
        String optString2 = jSONObject.optString("link");
        String optString3 = jSONObject.optString("profile_picture", null);
        Rx.f3242do.m2077do().m2076do(new Profile(optString, jSONObject.optString("first_name"), jSONObject.optString("middle_name"), jSONObject.optString("last_name"), jSONObject.optString(FacebookRequestErrorClassification.KEY_NAME), optString2 != null ? Uri.parse(optString2) : null, optString3 != null ? Uri.parse(optString3) : null), true);
    }

    @Override // defpackage.NF
    public FG then(Object obj) {
        Bundle bundle = (Bundle) obj;
        int i = TA.f3604do;
        return bundle != null && bundle.containsKey("google.messenger") ? LG.m1320try(null) : LG.m1320try(bundle);
    }

    @Override // defpackage.InterfaceC3314m9
    /* renamed from: try, reason: not valid java name */
    public Object mo1186try(Xz xz) {
        return AnalyticsConnectorRegistrar.lambda$getComponents$0(xz);
    }

    @Override // defpackage.InterfaceC0598Xa
    public Object then(FG fg) {
        Intent intent = (Intent) ((Bundle) fg.mo592class()).getParcelable("notification_data");
        if (intent != null) {
            return new CloudMessage(intent);
        }
        return null;
    }
}
