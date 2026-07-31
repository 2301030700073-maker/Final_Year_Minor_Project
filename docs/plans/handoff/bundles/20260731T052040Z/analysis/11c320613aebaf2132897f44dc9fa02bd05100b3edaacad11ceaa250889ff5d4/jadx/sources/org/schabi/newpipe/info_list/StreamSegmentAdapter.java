package org.schabi.newpipe.info_list;

import android.util.Log;
import com.xwray.groupie.Group;
import com.xwray.groupie.GroupDataObserver;
import com.xwray.groupie.GroupieAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamSegment;
import org.schabi.newpipe.player.ui.MainPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamSegmentAdapter extends GroupieAdapter {
    public int currentIndex;
    public final MainPlayerUi.AnonymousClass3 listener;

    public StreamSegmentAdapter(MainPlayerUi.AnonymousClass3 anonymousClass3) {
        this.listener = anonymousClass3;
    }

    public final void selectSegment(StreamSegmentItem streamSegmentItem) {
        int i;
        try {
            StreamSegmentItem streamSegmentItem2 = (StreamSegmentItem) getGroupAtAdapterPosition(this.currentIndex);
            this.currentIndex = 0;
            streamSegmentItem2.isSelected = false;
            GroupDataObserver groupDataObserver = streamSegmentItem2.parentDataObserver;
            if (groupDataObserver != null) {
                groupDataObserver.onItemChanged(streamSegmentItem2, 0, 1);
            }
        } catch (IndexOutOfBoundsException e) {
            this.currentIndex = 0;
            Log.e("StreamSegmentAdapter", "unSelectCurrentSegment: " + e.getMessage());
        }
        Iterator it = this.groups.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            Group group = (Group) it.next();
            int position = group.getPosition(streamSegmentItem);
            if (position >= 0) {
                i = position + i2;
                break;
            }
            i2 += group.getItemCount();
        }
        this.currentIndex = Math.max(0, i);
        streamSegmentItem.isSelected = true;
        GroupDataObserver groupDataObserver2 = streamSegmentItem.parentDataObserver;
        if (groupDataObserver2 != null) {
            groupDataObserver2.onItemChanged(streamSegmentItem, 0, 1);
        }
    }

    public final void selectSegmentAt(int i) {
        try {
            selectSegment((StreamSegmentItem) getGroupAtAdapterPosition(i));
        } catch (IndexOutOfBoundsException e) {
            this.currentIndex = 0;
            Log.e("StreamSegmentAdapter", "selectSegmentAt: " + e.getMessage());
        }
    }

    public final boolean setItems(StreamInfo streamInfo) {
        streamInfo.getClass();
        List streamSegments = streamInfo.getStreamSegments();
        streamSegments.getClass();
        if (streamSegments.isEmpty()) {
            return false;
        }
        clear();
        List<StreamSegment> streamSegments2 = streamInfo.getStreamSegments();
        streamSegments2.getClass();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(streamSegments2, 10));
        for (StreamSegment streamSegment : streamSegments2) {
            streamSegment.getClass();
            arrayList.add(new StreamSegmentItem(streamSegment, this.listener));
        }
        addAll(arrayList);
        return true;
    }
}
