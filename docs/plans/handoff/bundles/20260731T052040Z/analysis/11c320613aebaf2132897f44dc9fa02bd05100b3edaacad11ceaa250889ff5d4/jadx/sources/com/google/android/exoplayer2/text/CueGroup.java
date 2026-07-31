package com.google.android.exoplayer2.text;

import android.os.Bundle;
import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.BundleableUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Maps;
import com.google.common.collect.RegularImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class CueGroup implements Bundleable {
    public static final Bundleable.Creator<CueGroup> CREATOR;
    public static final CueGroup EMPTY_TIME_ZERO;
    private static final String FIELD_CUES;
    private static final String FIELD_PRESENTATION_TIME_US;
    public final ImmutableList cues;
    public final long presentationTimeUs;

    static {
        int i = ImmutableList.$r8$clinit;
        EMPTY_TIME_ZERO = new CueGroup(RegularImmutableList.EMPTY, 0L);
        FIELD_CUES = Util.intToStringMaxRadix(0);
        FIELD_PRESENTATION_TIME_US = Util.intToStringMaxRadix(1);
        CREATOR = new CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0(9);
    }

    public CueGroup(List<Cue> list, long j) {
        this.cues = ImmutableList.copyOf((Collection) list);
        this.presentationTimeUs = j;
    }

    private static ImmutableList filterOutBitmapCues(List<Cue> list) {
        int i = ImmutableList.$r8$clinit;
        Object[] objArr = new Object[4];
        int i2 = 0;
        boolean z = false;
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (list.get(i3).bitmap == null) {
                Cue cue = list.get(i3);
                cue.getClass();
                int i4 = i2 + 1;
                if (objArr.length < i4) {
                    objArr = Arrays.copyOf(objArr, Maps.expandedCapacity(objArr.length, i4));
                } else {
                    if (z) {
                        objArr = Arrays.copyOf(objArr, objArr.length);
                    }
                    objArr[i2] = cue;
                    i2++;
                }
                z = false;
                objArr[i2] = cue;
                i2++;
            }
        }
        return ImmutableList.asImmutableList(i2, objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CueGroup fromBundle(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_CUES);
        return new CueGroup(parcelableArrayList == null ? RegularImmutableList.EMPTY : BundleableUtil.fromBundleList(Cue.CREATOR, parcelableArrayList), bundle.getLong(FIELD_PRESENTATION_TIME_US));
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(FIELD_CUES, BundleableUtil.toBundleArrayList(filterOutBitmapCues(this.cues)));
        bundle.putLong(FIELD_PRESENTATION_TIME_US, this.presentationTimeUs);
        return bundle;
    }
}
