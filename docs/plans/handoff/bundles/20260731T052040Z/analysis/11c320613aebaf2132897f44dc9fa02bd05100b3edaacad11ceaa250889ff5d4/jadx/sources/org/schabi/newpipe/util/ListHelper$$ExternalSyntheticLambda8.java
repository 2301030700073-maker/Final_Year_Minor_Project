package org.schabi.newpipe.util;

import androidx.room.Room;
import java.util.Comparator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.schabi.newpipe.extractor.MediaFormat;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ListHelper$$ExternalSyntheticLambda8 implements Comparator {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ListHelper$$ExternalSyntheticLambda8(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                MediaFormat mediaFormat = (MediaFormat) obj3;
                MediaFormat mediaFormat2 = (MediaFormat) obj;
                MediaFormat mediaFormat3 = (MediaFormat) obj2;
                if (mediaFormat != null) {
                    return Boolean.compare(mediaFormat2 == mediaFormat, mediaFormat3 == mediaFormat);
                }
                return 0;
            case 1:
                return ((Number) ((Function2) obj3).invoke(obj, obj2)).intValue();
            default:
                for (Function1 function1 : (Function1[]) obj3) {
                    int compareValues = Room.compareValues((Comparable) function1.invoke(obj), (Comparable) function1.invoke(obj2));
                    if (compareValues != 0) {
                        return compareValues;
                    }
                }
                return 0;
        }
    }
}
