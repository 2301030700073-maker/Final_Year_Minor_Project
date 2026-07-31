package androidx.compose.foundation.text.selection;

import androidx.collection.LongIntMapKt;
import androidx.collection.MutableLongIntMap;
import androidx.compose.ui.layout.LayoutCoordinates;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import org.wikipedia.feed.HomeViewModel$getPlacesCards$$inlined$sortedBy$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectionLayoutBuilder {
    public final LayoutCoordinates containerCoordinates;
    public final long currentPosition;
    public int currentSlot;
    public int endSlot;
    public final ArrayList infoList;
    public final boolean isStartHandle;
    public final long previousHandlePosition;
    public final Selection previousSelection;
    public final HomeViewModel$getPlacesCards$$inlined$sortedBy$1 selectableIdOrderingComparator;
    public final MutableLongIntMap selectableIdToInfoListIndex;
    public int startSlot;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Direction.values().length];
            try {
                iArr[Direction.BEFORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Direction.ON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Direction.AFTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SelectionLayoutBuilder(long j, long j2, LayoutCoordinates layoutCoordinates, boolean z, Selection selection, HomeViewModel$getPlacesCards$$inlined$sortedBy$1 homeViewModel$getPlacesCards$$inlined$sortedBy$1) {
        this.currentPosition = j;
        this.previousHandlePosition = j2;
        this.containerCoordinates = layoutCoordinates;
        this.isStartHandle = z;
        this.previousSelection = selection;
        this.selectableIdOrderingComparator = homeViewModel$getPlacesCards$$inlined$sortedBy$1;
        int i = LongIntMapKt.$r8$clinit;
        this.selectableIdToInfoListIndex = new MutableLongIntMap(6);
        this.infoList = new ArrayList();
        this.startSlot = -1;
        this.endSlot = -1;
        this.currentSlot = -1;
    }

    public final int updateSlot(int i, Direction direction, Direction direction2) {
        if (i == -1) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[SimpleLayoutKt.resolve2dDirection(direction, direction2).ordinal()];
            if (i2 == 1) {
                return this.currentSlot - 1;
            }
            if (i2 == 2) {
                return this.currentSlot;
            }
            if (i2 != 3) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return 0;
            }
        }
        return i;
    }
}
