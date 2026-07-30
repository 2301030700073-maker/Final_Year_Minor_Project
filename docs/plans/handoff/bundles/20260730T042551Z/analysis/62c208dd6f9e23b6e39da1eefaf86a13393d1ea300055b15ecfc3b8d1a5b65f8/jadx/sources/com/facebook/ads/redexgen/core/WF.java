package com.facebook.ads.redexgen.core;

import com.facebook.internal.Utility;

/* loaded from: assets/audience_network.dex */
public abstract class WF {
    public static String[] A00 = {"SHB3gcLYeYHiz9EHJcwSoXi3t3dJ3Sae", "YsiV64puezA1JMx0OK9DKxP7EyirmbjM", "N4muBHoa4SjHZ7raAuzYL2vq1Yox5zaV", "XrSjTZ3QAJ3ds1", "8", "t", "XY8MO4Cd9EwNU5px6ussSQdlK04iGsJf", "eEhSpmY5oFVMO3yO0x4u4hP5mcUFTVnt"};

    public static WE A00(int i, long[] jArr, int[] iArr, long j) {
        int chunkSamplesRemaining = Utility.DEFAULT_STREAM_BUFFER_SIZE / i;
        int i2 = 0;
        for (int i3 : iArr) {
            i2 += AbstractC2094gE.A05(i3, chunkSamplesRemaining);
        }
        long[] jArr2 = new long[i2];
        int[] iArr2 = new int[i2];
        int originalSampleIndex = 0;
        long[] timestamps = new long[i2];
        int[] flags = new int[i2];
        int i4 = 0;
        int bufferSampleCount = 0;
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int rechunkedSampleCount = iArr[i5];
            long j2 = jArr[i5];
            String[] strArr = A00;
            String str = strArr[0];
            String str2 = strArr[2];
            int charAt = str.charAt(30);
            int maxSampleCount = str2.charAt(30);
            if (charAt != maxSampleCount) {
                throw new RuntimeException();
            }
            A00[3] = "Oz9Z3vr9qLF5H2";
            while (rechunkedSampleCount > 0) {
                int min = Math.min(chunkSamplesRemaining, rechunkedSampleCount);
                jArr2[bufferSampleCount] = j2;
                iArr2[bufferSampleCount] = i * min;
                originalSampleIndex = Math.max(originalSampleIndex, iArr2[bufferSampleCount]);
                timestamps[bufferSampleCount] = i4 * j;
                flags[bufferSampleCount] = 1;
                j2 += iArr2[bufferSampleCount];
                i4 += min;
                rechunkedSampleCount -= min;
                bufferSampleCount++;
            }
        }
        return new WE(jArr2, iArr2, originalSampleIndex, timestamps, flags, j * i4);
    }
}
