package org.wikipedia.readinglist;

import java.util.List;
import org.wikipedia.main.MainActivity;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListFragment$$ExternalSyntheticLambda7 implements ReadingListBehaviorsUtil.Callback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingListFragment f$0;
    public final /* synthetic */ ReadingList f$1;

    public /* synthetic */ ReadingListFragment$$ExternalSyntheticLambda7(ReadingListFragment readingListFragment, ReadingList readingList, int i) {
        this.$r8$classId = i;
        this.f$0 = readingListFragment;
        this.f$1 = readingList;
    }

    @Override // org.wikipedia.readinglist.ReadingListBehaviorsUtil.Callback
    public final void onCompleted() {
        int i = this.$r8$classId;
        ReadingList readingList = this.f$1;
        ReadingListFragment readingListFragment = this.f$0;
        switch (i) {
            case 0:
                int i2 = MainActivity.$r8$clinit;
                readingListFragment.startActivity(UriUtil.newIntent(readingListFragment.requireActivity()).putExtra("deleteReadingList", readingList.getTitle()), null);
                readingListFragment.requireActivity().finish();
                break;
            case 1:
                readingListFragment.update(readingList);
                break;
            default:
                List list = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.showDeleteListUndoSnackbar(readingListFragment.requireActivity(), readingList, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment, 13));
                readingListFragment.setSearchQuery$1(readingListFragment.currentSearchQuery);
                break;
        }
    }
}
