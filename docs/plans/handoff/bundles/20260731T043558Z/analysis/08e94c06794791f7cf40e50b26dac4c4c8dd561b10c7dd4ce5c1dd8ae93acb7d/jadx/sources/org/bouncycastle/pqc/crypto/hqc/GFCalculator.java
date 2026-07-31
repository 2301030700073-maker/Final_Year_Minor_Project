package org.bouncycastle.pqc.crypto.hqc;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.facebook.imagepipeline.common.RotationOptions;
import com.facebook.imageutils.JfifUtil;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import okhttp3.internal.ws.WebSocketProtocol;
import org.bouncycastle.math.Primes;

/* loaded from: classes6.dex */
class GFCalculator {
    static int[] exp = {1, 2, 4, 8, 16, 32, 64, 128, 29, 58, AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID, 232, 205, TsExtractor.TS_STREAM_TYPE_E_AC3, 19, 38, 76, 152, 45, 90, RotationOptions.ROTATE_180, 117, 234, 201, 143, 3, 6, 12, 24, 48, 96, 192, 157, 39, 78, 156, 37, 74, 148, 53, 106, 212, 181, 119, 238, 193, 159, 35, 70, 140, 5, 10, 20, 40, 80, 160, 93, 186, 105, 210, 185, 111, 222, 161, 95, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 97, 194, 153, 47, 94, 188, 101, 202, 137, 15, 30, 60, 120, PsExtractor.VIDEO_STREAM_MASK, 253, 231, Primes.SMALL_FACTOR_LIMIT, 187, 107, 214, 177, 127, 254, JfifUtil.MARKER_APP1, 223, 163, 91, 182, 113, 226, JfifUtil.MARKER_EOI, 175, 67, TsExtractor.TS_STREAM_TYPE_SPLICE_INFO, 17, 34, 68, TsExtractor.TS_STREAM_TYPE_DTS_HD, 13, 26, 52, 104, JfifUtil.MARKER_RST0, PsExtractor.PRIVATE_STREAM_1, 103, 206, TsExtractor.TS_STREAM_TYPE_AC3, 31, 62, 124, 248, 237, 199, 147, 59, 118, 236, 197, 151, 51, 102, 204, 133, 23, 46, 92, 184, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, JfifUtil.MARKER_SOS, 169, 79, 158, 33, 66, 132, 21, 42, 84, 168, 77, 154, 41, 82, 164, 85, 170, 73, 146, 57, 114, 228, 213, 183, 115, 230, 209, 191, 99, 198, 145, 63, WebSocketProtocol.PAYLOAD_SHORT, 252, 229, JfifUtil.MARKER_RST7, 179, 123, 246, 241, 255, 227, 219, 171, 75, 150, 49, 98, 196, 149, 55, 110, 220, 165, 87, 174, 65, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 25, 50, 100, 200, 141, 7, 14, 28, 56, 112, 224, 221, 167, 83, 166, 81, 162, 89, 178, 121, 242, 249, 239, 195, ModuleDescriptor.MODULE_VERSION, 43, 86, TsExtractor.TS_STREAM_TYPE_AC4, 69, TsExtractor.TS_STREAM_TYPE_DTS, 9, 18, 36, 72, 144, 61, 122, 244, 245, 247, 243, 251, 235, 203, TsExtractor.TS_STREAM_TYPE_DTS_UHD, 11, 22, 44, 88, 176, 125, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 233, 207, 131, 27, 54, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, JfifUtil.MARKER_SOI, 173, 71, 142, 1, 2, 4};
    static int[] log = {0, 0, 1, 25, 2, 50, 26, 198, 3, 223, 51, 238, 27, 104, 199, 75, 4, 100, 224, 14, 52, 141, 239, TsExtractor.TS_STREAM_TYPE_AC3, 28, 193, 105, 248, 200, 8, 76, 113, 5, TsExtractor.TS_STREAM_TYPE_DTS, 101, 47, JfifUtil.MARKER_APP1, 36, 15, 33, 53, 147, 142, JfifUtil.MARKER_SOS, PsExtractor.VIDEO_STREAM_MASK, 18, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 69, 29, 181, 194, 125, 106, 39, 249, 185, 201, 154, 9, 120, 77, 228, 114, 166, 6, 191, TsExtractor.TS_STREAM_TYPE_DTS_UHD, 98, 102, 221, 48, 253, 226, 152, 37, 179, 16, 145, 34, TsExtractor.TS_STREAM_TYPE_DTS_HD, 54, JfifUtil.MARKER_RST0, 148, 206, 143, 150, 219, PsExtractor.PRIVATE_STREAM_1, 241, 210, 19, 92, 131, 56, 70, 64, 30, 66, 182, 163, 195, 72, WebSocketProtocol.PAYLOAD_SHORT, 110, 107, 58, 40, 84, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 133, 186, 61, 202, 94, ModuleDescriptor.MODULE_VERSION, 159, 10, 21, 121, 43, 78, 212, 229, TsExtractor.TS_STREAM_TYPE_AC4, 115, 243, 167, 87, 7, 112, 192, 247, 140, 128, 99, 13, 103, 74, 222, 237, 49, 197, 254, 24, 227, 165, 153, 119, 38, 184, RotationOptions.ROTATE_180, 124, 17, 68, 146, JfifUtil.MARKER_EOI, 35, 32, 137, 46, 55, 63, 209, 91, 149, 188, 207, 205, 144, TsExtractor.TS_STREAM_TYPE_E_AC3, 151, 178, 220, 252, FacebookRequestErrorClassification.EC_INVALID_TOKEN, 97, 242, 86, Primes.SMALL_FACTOR_LIMIT, 171, 20, 42, 93, 158, 132, 60, 57, 83, 71, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 65, 162, 31, 45, 67, JfifUtil.MARKER_SOI, 183, 123, 164, 118, 196, 23, 73, 236, 127, 12, 111, 246, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 161, 59, 82, 41, 157, 85, 170, 251, 96, TsExtractor.TS_STREAM_TYPE_SPLICE_INFO, 177, 187, 204, 62, 90, 203, 89, 95, 176, 156, 169, 160, 81, 11, 245, 22, 235, 122, 117, 44, JfifUtil.MARKER_RST7, 79, 174, 213, 233, 230, 231, 173, 232, AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID, 214, 244, 234, 168, 80, 88, 175};

    GFCalculator() {
    }

    static int inverse(int i) {
        return exp[255 - log[i]] & Utils.toUnsigned16Bits((-i) >> 31);
    }

    static int mod(int i) {
        int unsigned16Bits = Utils.toUnsigned16Bits(i - 255);
        return Utils.toUnsigned16Bits(unsigned16Bits + (Utils.toUnsigned8bits(-(unsigned16Bits >> 15)) & 255));
    }

    static int mult(int i, int i2) {
        int unsigned16Bits = Utils.toUnsigned16Bits((-i) >> 31) & Utils.toUnsigned16Bits((-i2) >> 31);
        int[] iArr = exp;
        int[] iArr2 = log;
        return Utils.toUnsigned16Bits(iArr[mod(iArr2[i] + iArr2[i2])] & unsigned16Bits);
    }
}
