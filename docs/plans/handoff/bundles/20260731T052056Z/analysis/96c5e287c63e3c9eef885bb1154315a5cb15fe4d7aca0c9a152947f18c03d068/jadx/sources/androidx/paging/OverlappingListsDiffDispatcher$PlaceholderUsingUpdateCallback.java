package androidx.paging;

import androidx.recyclerview.widget.ListUpdateCallback;
import coil3.memory.MemoryCacheService;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback implements ListUpdateCallback {
    public final MemoryCacheService callback;
    public final PageStore newList;
    public int placeholdersAfter;
    public int placeholdersAfterState;
    public int placeholdersBefore;
    public int placeholdersBeforeState;
    public int storageCount;

    public OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback(PageStore pageStore, PageStore pageStore2, MemoryCacheService memoryCacheService) {
        pageStore.getClass();
        this.newList = pageStore2;
        this.callback = memoryCacheService;
        this.placeholdersBefore = pageStore.placeholdersBefore;
        this.placeholdersAfter = pageStore.placeholdersAfter;
        this.storageCount = pageStore.dataCount;
        this.placeholdersBeforeState = 1;
        this.placeholdersAfterState = 1;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onChanged(int i, int i2, Object obj) {
        this.callback.onChanged(i + this.placeholdersBefore, i2, obj);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onInserted(int i, int i2) {
        int i3 = this.storageCount;
        MemoryCacheService memoryCacheService = this.callback;
        if (i >= i3 && this.placeholdersAfterState != 2) {
            int min = Math.min(i2, this.placeholdersAfter);
            if (min > 0) {
                this.placeholdersAfterState = 3;
                memoryCacheService.onChanged(this.placeholdersBefore + i, min, DiffingChangePayload.PLACEHOLDER_TO_ITEM);
                this.placeholdersAfter -= min;
            }
            int i4 = i2 - min;
            if (i4 > 0) {
                memoryCacheService.onInserted(i + min + this.placeholdersBefore, i4);
            }
        } else if (i <= 0 && this.placeholdersBeforeState != 2) {
            int min2 = Math.min(i2, this.placeholdersBefore);
            if (min2 > 0) {
                this.placeholdersBeforeState = 3;
                memoryCacheService.onChanged((0 - min2) + this.placeholdersBefore, min2, DiffingChangePayload.PLACEHOLDER_TO_ITEM);
                this.placeholdersBefore -= min2;
            }
            int i5 = i2 - min2;
            if (i5 > 0) {
                memoryCacheService.onInserted(this.placeholdersBefore, i5);
            }
        } else {
            memoryCacheService.onInserted(i + this.placeholdersBefore, i2);
        }
        this.storageCount += i2;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onMoved(int i, int i2) {
        int i3 = this.placeholdersBefore;
        this.callback.onMoved(i + i3, i2 + i3);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public final void onRemoved(int i, int i2) {
        int i3;
        int i4 = i + i2;
        int i5 = this.storageCount;
        PageStore pageStore = this.newList;
        MemoryCacheService memoryCacheService = this.callback;
        if (i4 >= i5 && this.placeholdersAfterState != 3) {
            int min = Math.min(pageStore.placeholdersAfter - this.placeholdersAfter, i2);
            i3 = min >= 0 ? min : 0;
            int i6 = i2 - i3;
            if (i3 > 0) {
                this.placeholdersAfterState = 2;
                memoryCacheService.onChanged(this.placeholdersBefore + i, i3, DiffingChangePayload.ITEM_TO_PLACEHOLDER);
                this.placeholdersAfter += i3;
            }
            if (i6 > 0) {
                memoryCacheService.onRemoved(i + i3 + this.placeholdersBefore, i6);
            }
        } else if (i <= 0 && this.placeholdersBeforeState != 3) {
            int min2 = Math.min(pageStore.placeholdersBefore - this.placeholdersBefore, i2);
            i3 = min2 >= 0 ? min2 : 0;
            int i7 = i2 - i3;
            if (i7 > 0) {
                memoryCacheService.onRemoved(this.placeholdersBefore, i7);
            }
            if (i3 > 0) {
                this.placeholdersBeforeState = 2;
                memoryCacheService.onChanged(this.placeholdersBefore, i3, DiffingChangePayload.ITEM_TO_PLACEHOLDER);
                this.placeholdersBefore += i3;
            }
        } else {
            memoryCacheService.onRemoved(i + this.placeholdersBefore, i2);
        }
        this.storageCount -= i2;
    }
}
