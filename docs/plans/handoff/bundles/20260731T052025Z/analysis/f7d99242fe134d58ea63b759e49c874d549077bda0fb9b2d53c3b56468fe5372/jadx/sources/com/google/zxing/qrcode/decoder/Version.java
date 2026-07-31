package com.google.zxing.qrcode.decoder;

import androidx.compose.material3.FabPlacement;
import java.io.Serializable;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Version {
    public final int[] alignmentPatternCenters;
    public final PriorityQueue[] ecBlocks;
    public final int totalCodewords;
    public final int versionNumber;
    public static final int[] VERSION_DECODE_INFO = {31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017};
    public static final Version[] VERSIONS = buildVersions();

    public Version(int i, int[] iArr, PriorityQueue... priorityQueueArr) {
        this.versionNumber = i;
        this.alignmentPatternCenters = iArr;
        this.ecBlocks = priorityQueueArr;
        PriorityQueue priorityQueue = priorityQueueArr[0];
        int i2 = priorityQueue.size;
        int i3 = 0;
        for (FabPlacement fabPlacement : (FabPlacement[]) priorityQueue.array) {
            i3 += (fabPlacement.height + i2) * fabPlacement.left;
        }
        this.totalCodewords = i3;
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v31, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v35, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v39, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v43, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v47, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v51, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v55, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v59, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v63, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v67, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v105, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v11, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v113, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v128, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v135, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v143, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v151, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v157, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v164, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v172, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v174, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v180, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v187, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v195, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v201, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v209, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v216, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v224, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v26, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v32, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v4, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v45, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v49, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v55, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v60, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v66, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v69, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v75, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v83, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v92, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r10v99, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v1, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v104, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v109, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v127, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v138, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v14, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v148, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v155, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v163, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v167, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v174, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v184, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v189, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v194, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v200, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v206, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v213, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v218, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v225, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v227, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v34, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v38, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v50, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v66, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v72, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v78, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v86, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v92, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r11v98, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v0, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v104, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v11, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v129, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v132, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v137, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v144, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v153, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v16, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v161, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v166, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v180, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v185, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v206, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v216, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v234, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v244, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v254, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v26, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v264, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v4, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v40, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v62, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v8, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v87, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r12v95, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v104, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v16, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v18, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v27, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v38, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v4, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v72, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r13v83, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r14v10, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r14v15, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r14v19, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r14v2, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r14v25, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r14v29, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r14v34, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r14v38, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r14v40, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v0, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v117, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v125, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v13, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v130, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v157, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v196, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v22, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v33, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v39, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v4, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v50, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v53, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v59, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v64, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v67, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v74, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v79, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v8, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r15v88, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v11, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v25, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v29, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v33, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v39, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v43, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v47, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v51, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v55, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v59, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v63, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r2v18, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r2v34, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r2v9, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r3v10, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r8v3, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r9v73, types: [androidx.compose.material3.FabPlacement[], java.io.Serializable] */
    public static Version[] buildVersions() {
        int i = 15;
        int i2 = 10;
        Version version = new Version(1, new int[0], new PriorityQueue(7, (Serializable) new FabPlacement[]{new FabPlacement(1, 19, 3)}, i), new PriorityQueue(i2, (Serializable) new FabPlacement[]{new FabPlacement(1, 16, 3)}, i), new PriorityQueue(13, (Serializable) new FabPlacement[]{new FabPlacement(1, 13, 3)}, i), new PriorityQueue(17, (Serializable) new FabPlacement[]{new FabPlacement(1, 9, 3)}, i));
        int i3 = 22;
        Version version2 = new Version(2, new int[]{6, 18}, new PriorityQueue(i2, (Serializable) new FabPlacement[]{new FabPlacement(1, 34, 3)}, i), new PriorityQueue(16, (Serializable) new FabPlacement[]{new FabPlacement(1, 28, 3)}, i), new PriorityQueue(i3, (Serializable) new FabPlacement[]{new FabPlacement(1, 22, 3)}, i), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(1, 16, 3)}, i));
        Version version3 = new Version(3, new int[]{6, 22}, new PriorityQueue(i, (Serializable) new FabPlacement[]{new FabPlacement(1, 55, 3)}, i), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(1, 44, 3)}, i), new PriorityQueue(18, (Serializable) new FabPlacement[]{new FabPlacement(2, 17, 3)}, i), new PriorityQueue(i3, (Serializable) new FabPlacement[]{new FabPlacement(2, 13, 3)}, i));
        Version version4 = new Version(4, new int[]{6, 26}, new PriorityQueue(20, (Serializable) new FabPlacement[]{new FabPlacement(1, 80, 3)}, i), new PriorityQueue(18, (Serializable) new FabPlacement[]{new FabPlacement(2, 32, 3)}, i), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(2, 24, 3)}, i), new PriorityQueue(16, (Serializable) new FabPlacement[]{new FabPlacement(4, 9, 3)}, i));
        Version version5 = new Version(5, new int[]{6, 30}, new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(1, 108, 3)}, i), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(2, 43, 3)}, i), new PriorityQueue(18, (Serializable) new FabPlacement[]{new FabPlacement(2, 15, 3), new FabPlacement(2, 16, 3)}, i), new PriorityQueue(22, (Serializable) new FabPlacement[]{new FabPlacement(2, 11, 3), new FabPlacement(2, 12, 3)}, i));
        Version version6 = new Version(6, new int[]{6, 34}, new PriorityQueue(18, (Serializable) new FabPlacement[]{new FabPlacement(2, 68, 3)}, i), new PriorityQueue(16, (Serializable) new FabPlacement[]{new FabPlacement(4, 27, 3)}, i), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(4, 19, 3)}, i), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(4, 15, 3)}, i));
        Version version7 = new Version(7, new int[]{6, 22, 38}, new PriorityQueue(20, (Serializable) new FabPlacement[]{new FabPlacement(2, 78, 3)}, i), new PriorityQueue(18, (Serializable) new FabPlacement[]{new FabPlacement(4, 31, 3)}, i), new PriorityQueue(18, (Serializable) new FabPlacement[]{new FabPlacement(2, 14, 3), new FabPlacement(4, 15, 3)}, 15), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(4, 13, 3), new FabPlacement(1, 14, 3)}, 15));
        int i4 = 15;
        int i5 = 22;
        Version version8 = new Version(8, new int[]{6, 24, 42}, new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(2, 97, 3)}, i4), new PriorityQueue(i5, (Serializable) new FabPlacement[]{new FabPlacement(2, 38, 3), new FabPlacement(2, 39, 3)}, i4), new PriorityQueue(i5, (Serializable) new FabPlacement[]{new FabPlacement(4, 18, 3), new FabPlacement(2, 19, 3)}, 15), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(4, 14, 3), new FabPlacement(2, 15, 3)}, 15));
        int i6 = 15;
        Version version9 = new Version(9, new int[]{6, 26, 46}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(2, 116, 3)}, i6), new PriorityQueue(22, (Serializable) new FabPlacement[]{new FabPlacement(3, 36, 3), new FabPlacement(2, 37, 3)}, i6), new PriorityQueue(20, (Serializable) new FabPlacement[]{new FabPlacement(4, 16, 3), new FabPlacement(4, 17, 3)}, 15), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(4, 12, 3), new FabPlacement(4, 13, 3)}, 15));
        int i7 = 15;
        Version version10 = new Version(10, new int[]{6, 28, 50}, new PriorityQueue(18, (Serializable) new FabPlacement[]{new FabPlacement(2, 68, 3), new FabPlacement(2, 69, 3)}, i7), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(4, 43, 3), new FabPlacement(1, 44, 3)}, i7), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(6, 19, 3), new FabPlacement(2, 20, 3)}, i7), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(6, 15, 3), new FabPlacement(2, 16, 3)}, 15));
        int i8 = 15;
        Version version11 = new Version(11, new int[]{6, 30, 54}, new PriorityQueue(20, (Serializable) new FabPlacement[]{new FabPlacement(4, 81, 3)}, i8), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(1, 50, 3), new FabPlacement(4, 51, 3)}, i8), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(4, 22, 3), new FabPlacement(4, 23, 3)}, 15), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(3, 12, 3), new FabPlacement(8, 13, 3)}, 15));
        int i9 = 15;
        int i10 = 15;
        Version version12 = new Version(12, new int[]{6, 32, 58}, new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(2, 92, 3), new FabPlacement(2, 93, 3)}, i9), new PriorityQueue(22, (Serializable) new FabPlacement[]{new FabPlacement(6, 36, 3), new FabPlacement(2, 37, 3)}, i9), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(4, 20, 3), new FabPlacement(6, 21, 3)}, i10), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(7, 14, 3), new FabPlacement(4, 15, 3)}, i10));
        int i11 = 15;
        Version version13 = new Version(13, new int[]{6, 34, 62}, new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(4, 107, 3)}, i11), new PriorityQueue(22, (Serializable) new FabPlacement[]{new FabPlacement(8, 37, 3), new FabPlacement(1, 38, 3)}, i11), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(8, 20, 3), new FabPlacement(4, 21, 3)}, 15), new PriorityQueue(22, (Serializable) new FabPlacement[]{new FabPlacement(12, 11, 3), new FabPlacement(4, 12, 3)}, 15));
        Version version14 = new Version(14, new int[]{6, 26, 46, 66}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(3, 115, 3), new FabPlacement(1, 116, 3)}, 15), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(4, 40, 3), new FabPlacement(5, 41, 3)}, 15), new PriorityQueue(20, (Serializable) new FabPlacement[]{new FabPlacement(11, 16, 3), new FabPlacement(5, 17, 3)}, 15), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(11, 12, 3), new FabPlacement(5, 13, 3)}, 15));
        Version version15 = new Version(15, new int[]{6, 26, 48, 70}, new PriorityQueue(22, (Serializable) new FabPlacement[]{new FabPlacement(5, 87, 3), new FabPlacement(1, 88, 3)}, 15), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(5, 41, 3), new FabPlacement(5, 42, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(5, 24, 3), new FabPlacement(7, 25, 3)}, 15), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(11, 12, 3), new FabPlacement(7, 13, 3)}, 15));
        int i12 = 15;
        Version version16 = new Version(16, new int[]{6, 26, 50, 74}, new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(5, 98, 3), new FabPlacement(1, 99, 3)}, i12), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(7, 45, 3), new FabPlacement(3, 46, 3)}, i12), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(15, 19, 3), new FabPlacement(2, 20, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(3, 15, 3), new FabPlacement(13, 16, 3)}, 15));
        int i13 = 28;
        int i14 = 15;
        Version version17 = new Version(17, new int[]{6, 30, 54, 78}, new PriorityQueue(i13, (Serializable) new FabPlacement[]{new FabPlacement(1, 107, 3), new FabPlacement(5, 108, 3)}, 15), new PriorityQueue(i13, (Serializable) new FabPlacement[]{new FabPlacement(10, 46, 3), new FabPlacement(1, 47, 3)}, i14), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(1, 22, 3), new FabPlacement(15, 23, 3)}, i14), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(2, 14, 3), new FabPlacement(17, 15, 3)}, i14));
        int i15 = 15;
        Version version18 = new Version(18, new int[]{6, 30, 56, 82}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(5, 120, 3), new FabPlacement(1, 121, 3)}, 15), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(9, 43, 3), new FabPlacement(4, 44, 3)}, 15), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(17, 22, 3), new FabPlacement(1, 23, 3)}, i15), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(2, 14, 3), new FabPlacement(19, 15, 3)}, i15));
        int i16 = 15;
        Version version19 = new Version(19, new int[]{6, 30, 58, 86}, new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(3, 113, 3), new FabPlacement(4, 114, 3)}, i16), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(3, 44, 3), new FabPlacement(11, 45, 3)}, i16), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(17, 21, 3), new FabPlacement(4, 22, 3)}, 15), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(9, 13, 3), new FabPlacement(16, 14, 3)}, 15));
        int i17 = 15;
        int i18 = 28;
        Version version20 = new Version(20, new int[]{6, 34, 62, 90}, new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(3, 107, 3), new FabPlacement(5, 108, 3)}, i17), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(3, 41, 3), new FabPlacement(13, 42, 3)}, i17), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(15, 24, 3), new FabPlacement(5, 25, 3)}, 15), new PriorityQueue(i18, (Serializable) new FabPlacement[]{new FabPlacement(15, 15, 3), new FabPlacement(10, 16, 3)}, 15));
        int i19 = 15;
        Version version21 = new Version(21, new int[]{6, 28, 50, 72, 94}, new PriorityQueue(i18, (Serializable) new FabPlacement[]{new FabPlacement(4, 116, 3), new FabPlacement(4, 117, 3)}, i19), new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(17, 42, 3)}, i19), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(17, 22, 3), new FabPlacement(6, 23, 3)}, i19), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(19, 16, 3), new FabPlacement(6, 17, 3)}, 15));
        int i20 = 15;
        int i21 = 28;
        Version version22 = new Version(22, new int[]{6, 26, 50, 74, 98}, new PriorityQueue(i21, (Serializable) new FabPlacement[]{new FabPlacement(2, 111, 3), new FabPlacement(7, 112, 3)}, i20), new PriorityQueue(i21, (Serializable) new FabPlacement[]{new FabPlacement(17, 46, 3)}, i20), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(7, 24, 3), new FabPlacement(16, 25, 3)}, i20), new PriorityQueue(24, (Serializable) new FabPlacement[]{new FabPlacement(34, 13, 3)}, i20));
        Version version23 = new Version(23, new int[]{6, 30, 54, 78, 102}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(4, 121, 3), new FabPlacement(5, 122, 3)}, 15), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(4, 47, 3), new FabPlacement(14, 48, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(11, 24, 3), new FabPlacement(14, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(16, 15, 3), new FabPlacement(14, 16, 3)}, 15));
        Version version24 = new Version(24, new int[]{6, 28, 54, 80, 106}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(6, 117, 3), new FabPlacement(4, 118, 3)}, 15), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(6, 45, 3), new FabPlacement(14, 46, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(11, 24, 3), new FabPlacement(16, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(30, 16, 3), new FabPlacement(2, 17, 3)}, 15));
        Version version25 = new Version(25, new int[]{6, 32, 58, 84, 110}, new PriorityQueue(26, (Serializable) new FabPlacement[]{new FabPlacement(8, 106, 3), new FabPlacement(4, 107, 3)}, 15), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(8, 47, 3), new FabPlacement(13, 48, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(7, 24, 3), new FabPlacement(22, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(22, 15, 3), new FabPlacement(13, 16, 3)}, 15));
        int i22 = 15;
        Version version26 = new Version(26, new int[]{6, 30, 58, 86, 114}, new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(10, 114, 3), new FabPlacement(2, 115, 3)}, i22), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(19, 46, 3), new FabPlacement(4, 47, 3)}, i22), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(28, 22, 3), new FabPlacement(6, 23, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(33, 16, 3), new FabPlacement(4, 17, 3)}, 15));
        int i23 = 15;
        Version version27 = new Version(27, new int[]{6, 34, 62, 90, 118}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(8, 122, 3), new FabPlacement(4, 123, 3)}, i23), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(22, 45, 3), new FabPlacement(3, 46, 3)}, i23), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(8, 23, 3), new FabPlacement(26, 24, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(12, 15, 3), new FabPlacement(28, 16, 3)}, 15));
        int i24 = 15;
        Version version28 = new Version(28, new int[]{6, 26, 50, 74, 98, 122}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(3, 117, 3), new FabPlacement(10, 118, 3)}, i24), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(3, 45, 3), new FabPlacement(23, 46, 3)}, i24), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(4, 24, 3), new FabPlacement(31, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(11, 15, 3), new FabPlacement(31, 16, 3)}, 15));
        int i25 = 15;
        Version version29 = new Version(29, new int[]{6, 30, 54, 78, 102, 126}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(7, 116, 3), new FabPlacement(7, 117, 3)}, i25), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(21, 45, 3), new FabPlacement(7, 46, 3)}, i25), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(1, 23, 3), new FabPlacement(37, 24, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(19, 15, 3), new FabPlacement(26, 16, 3)}, 15));
        int i26 = 15;
        Version version30 = new Version(30, new int[]{6, 26, 52, 78, 104, 130}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(5, 115, 3), new FabPlacement(10, 116, 3)}, i26), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(19, 47, 3), new FabPlacement(10, 48, 3)}, i26), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(15, 24, 3), new FabPlacement(25, 25, 3)}, i26), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(23, 15, 3), new FabPlacement(25, 16, 3)}, 15));
        int i27 = 15;
        Version version31 = new Version(31, new int[]{6, 30, 56, 82, 108, 134}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(13, 115, 3), new FabPlacement(3, 116, 3)}, i27), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(2, 46, 3), new FabPlacement(29, 47, 3)}, i27), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(42, 24, 3), new FabPlacement(1, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(23, 15, 3), new FabPlacement(28, 16, 3)}, 15));
        int i28 = 15;
        Version version32 = new Version(32, new int[]{6, 34, 60, 86, 112, 138}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(17, 115, 3)}, i28), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(10, 46, 3), new FabPlacement(23, 47, 3)}, i28), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(10, 24, 3), new FabPlacement(35, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(19, 15, 3), new FabPlacement(35, 16, 3)}, 15));
        int i29 = 15;
        Version version33 = new Version(33, new int[]{6, 30, 58, 86, 114, 142}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(17, 115, 3), new FabPlacement(1, 116, 3)}, i29), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(14, 46, 3), new FabPlacement(21, 47, 3)}, i29), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(29, 24, 3), new FabPlacement(19, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(11, 15, 3), new FabPlacement(46, 16, 3)}, 15));
        int i30 = 15;
        Version version34 = new Version(34, new int[]{6, 34, 62, 90, 118, 146}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(13, 115, 3), new FabPlacement(6, 116, 3)}, i30), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(14, 46, 3), new FabPlacement(23, 47, 3)}, i30), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(44, 24, 3), new FabPlacement(7, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(59, 16, 3), new FabPlacement(1, 17, 3)}, 15));
        int i31 = 15;
        Version version35 = new Version(35, new int[]{6, 30, 54, 78, 102, 126, 150}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(12, 121, 3), new FabPlacement(7, 122, 3)}, i31), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(12, 47, 3), new FabPlacement(26, 48, 3)}, i31), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(39, 24, 3), new FabPlacement(14, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(22, 15, 3), new FabPlacement(41, 16, 3)}, 15));
        int i32 = 15;
        Version version36 = new Version(36, new int[]{6, 24, 50, 76, 102, 128, 154}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(6, 121, 3), new FabPlacement(14, 122, 3)}, i32), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(6, 47, 3), new FabPlacement(34, 48, 3)}, i32), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(46, 24, 3), new FabPlacement(10, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(2, 15, 3), new FabPlacement(64, 16, 3)}, 15));
        int i33 = 15;
        Version version37 = new Version(37, new int[]{6, 28, 54, 80, 106, 132, 158}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(17, 122, 3), new FabPlacement(4, 123, 3)}, i33), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(29, 46, 3), new FabPlacement(14, 47, 3)}, i33), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(49, 24, 3), new FabPlacement(10, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(24, 15, 3), new FabPlacement(46, 16, 3)}, 15));
        int i34 = 15;
        Version version38 = new Version(38, new int[]{6, 32, 58, 84, 110, 136, 162}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(4, 122, 3), new FabPlacement(18, 123, 3)}, i34), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(13, 46, 3), new FabPlacement(32, 47, 3)}, i34), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(48, 24, 3), new FabPlacement(14, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(42, 15, 3), new FabPlacement(32, 16, 3)}, 15));
        int i35 = 15;
        Version version39 = new Version(39, new int[]{6, 26, 54, 82, 110, 138, 166}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(20, 117, 3), new FabPlacement(4, 118, 3)}, i35), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(40, 47, 3), new FabPlacement(7, 48, 3)}, i35), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(43, 24, 3), new FabPlacement(22, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(10, 15, 3), new FabPlacement(67, 16, 3)}, 15));
        int i36 = 15;
        return new Version[]{version, version2, version3, version4, version5, version6, version7, version8, version9, version10, version11, version12, version13, version14, version15, version16, version17, version18, version19, version20, version21, version22, version23, version24, version25, version26, version27, version28, version29, version30, version31, version32, version33, version34, version35, version36, version37, version38, version39, new Version(40, new int[]{6, 30, 58, 86, 114, 142, 170}, new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(19, 118, 3), new FabPlacement(6, 119, 3)}, i36), new PriorityQueue(28, (Serializable) new FabPlacement[]{new FabPlacement(18, 47, 3), new FabPlacement(31, 48, 3)}, i36), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(34, 24, 3), new FabPlacement(34, 25, 3)}, 15), new PriorityQueue(30, (Serializable) new FabPlacement[]{new FabPlacement(20, 15, 3), new FabPlacement(61, 16, 3)}, 15))};
    }

    public static Version decodeVersionInformation(int i) {
        int i2 = Integer.MAX_VALUE;
        int i3 = 0;
        for (int i4 = 0; i4 < 34; i4++) {
            int i5 = VERSION_DECODE_INFO[i4];
            if (i5 == i) {
                return getVersionForNumber(i4 + 7);
            }
            int bitCount = Integer.bitCount(i5 ^ i);
            if (bitCount < i2) {
                i3 = i4 + 7;
                i2 = bitCount;
            }
        }
        if (i2 <= 3) {
            return getVersionForNumber(i3);
        }
        return null;
    }

    public static Version getVersionForNumber(int i) {
        if (i >= 1 && i <= 40) {
            return VERSIONS[i - 1];
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
        return null;
    }

    public final String toString() {
        return String.valueOf(this.versionNumber);
    }
}
