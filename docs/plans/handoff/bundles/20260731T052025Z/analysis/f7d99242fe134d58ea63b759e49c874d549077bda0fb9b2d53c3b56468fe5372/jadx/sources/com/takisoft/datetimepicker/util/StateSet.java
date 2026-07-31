package com.takisoft.datetimepicker.util;

import android.R;
import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class StateSet {
    public static final int[] VIEW_STATE_IDS;
    public static final int[][] VIEW_STATE_SETS;
    public static final int[] ViewDrawableStates;

    static {
        int[] iArr = {R.attr.state_window_focused, 1, R.attr.state_selected, 2, R.attr.state_focused, 4, R.attr.state_enabled, 8, R.attr.state_pressed, 16, R.attr.state_activated, 32, R.attr.state_accelerated, 64, R.attr.state_hovered, 128, R.attr.state_drag_can_accept, 256, R.attr.state_drag_hovered, 512};
        VIEW_STATE_IDS = iArr;
        ViewDrawableStates = new int[]{R.attr.state_window_focused, R.attr.state_selected, R.attr.state_focused, R.attr.state_enabled, R.attr.state_pressed, R.attr.state_activated, R.attr.state_accelerated, R.attr.state_hovered, R.attr.state_drag_can_accept, R.attr.state_drag_hovered};
        int length = iArr.length / 2;
        int length2 = iArr.length;
        int[] iArr2 = new int[length2];
        for (int i = 0; i < length; i++) {
            int i2 = ViewDrawableStates[i];
            int i3 = 0;
            while (true) {
                int[] iArr3 = VIEW_STATE_IDS;
                if (i3 < iArr3.length) {
                    if (iArr3[i3] == i2) {
                        int i4 = i * 2;
                        iArr2[i4] = i2;
                        iArr2[i4 + 1] = iArr3[i3 + 1];
                    }
                    i3 += 2;
                }
            }
        }
        VIEW_STATE_SETS = new int[1 << (VIEW_STATE_IDS.length / 2)][];
        for (int i5 = 0; i5 < VIEW_STATE_SETS.length; i5++) {
            int[] iArr4 = new int[Integer.bitCount(i5)];
            int i6 = 0;
            for (int i7 = 0; i7 < length2; i7 += 2) {
                if ((iArr2[i7 + 1] & i5) != 0) {
                    iArr4[i6] = iArr2[i7];
                    i6++;
                }
            }
            VIEW_STATE_SETS[i5] = iArr4;
        }
    }

    public static int[] get(int i) {
        int[][] iArr = VIEW_STATE_SETS;
        if (i < iArr.length) {
            return iArr[i];
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Invalid state set mask");
        return null;
    }
}
