package com.android.contacts.list;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.SectionIndexer;

/* loaded from: classes.dex */
public abstract class IndexerListAdapter extends PinnedHeaderListAdapter implements SectionIndexer {
    protected Context mContext;
    private View mHeader;
    private int mIndexedPartition;
    private SectionIndexer mIndexer;
    private Placement mPlacementCache;
    private boolean mSectionHeaderDisplayEnabled;

    protected abstract View createPinnedSectionHeaderView(Context context, ViewGroup viewGroup);

    protected abstract void setPinnedSectionTitle(View view, String str);

    public static final class Placement {
        public boolean firstInSection;
        public boolean lastInSection;
        private int position = -1;
        public String sectionHeader;

        public void invalidate() {
            this.position = -1;
        }
    }

    public IndexerListAdapter(Context context) {
        super(context);
        this.mIndexedPartition = 0;
        this.mPlacementCache = new Placement();
        this.mContext = context;
    }

    public boolean isSectionHeaderDisplayEnabled() {
        return this.mSectionHeaderDisplayEnabled;
    }

    public void setSectionHeaderDisplayEnabled(boolean z) {
        this.mSectionHeaderDisplayEnabled = z;
    }

    public int getIndexedPartition() {
        return this.mIndexedPartition;
    }

    public void setIndexedPartition(int i) {
        this.mIndexedPartition = i;
    }

    public SectionIndexer getIndexer() {
        return this.mIndexer;
    }

    public void setIndexer(SectionIndexer sectionIndexer) {
        this.mIndexer = sectionIndexer;
        this.mPlacementCache.invalidate();
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        SectionIndexer sectionIndexer = this.mIndexer;
        if (sectionIndexer == null) {
            return new String[]{" "};
        }
        return sectionIndexer.getSections();
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        SectionIndexer sectionIndexer = this.mIndexer;
        if (sectionIndexer == null) {
            return -1;
        }
        return sectionIndexer.getPositionForSection(i);
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        SectionIndexer sectionIndexer = this.mIndexer;
        if (sectionIndexer == null) {
            return -1;
        }
        return sectionIndexer.getSectionForPosition(i);
    }

    @Override // com.android.contacts.list.PinnedHeaderListAdapter, com.android.contacts.list.PinnedHeaderListView.PinnedHeaderAdapter
    public int getPinnedHeaderCount() {
        if (isSectionHeaderDisplayEnabled()) {
            return super.getPinnedHeaderCount() + 1;
        }
        return super.getPinnedHeaderCount();
    }

    @Override // com.android.contacts.list.PinnedHeaderListAdapter, com.android.contacts.list.PinnedHeaderListView.PinnedHeaderAdapter
    public View getPinnedHeaderView(int i, View view, ViewGroup viewGroup) {
        if (isSectionHeaderDisplayEnabled() && i == getPinnedHeaderCount() - 1) {
            if (this.mHeader == null) {
                this.mHeader = createPinnedSectionHeaderView(this.mContext, viewGroup);
            }
            return this.mHeader;
        }
        return super.getPinnedHeaderView(i, view, viewGroup);
    }

    @Override // com.android.contacts.list.PinnedHeaderListAdapter, com.android.contacts.list.PinnedHeaderListView.PinnedHeaderAdapter
    public void configurePinnedHeaders(PinnedHeaderListView pinnedHeaderListView) {
        int offsetInPartition;
        super.configurePinnedHeaders(pinnedHeaderListView);
        if (isSectionHeaderDisplayEnabled()) {
            int pinnedHeaderCount = getPinnedHeaderCount() - 1;
            if (this.mIndexer == null || getCount() == 0) {
                pinnedHeaderListView.setHeaderInvisible(pinnedHeaderCount, false);
                return;
            }
            int positionAt = pinnedHeaderListView.getPositionAt(pinnedHeaderListView.getTotalTopPinnedHeaderHeight());
            int headerViewsCount = positionAt - pinnedHeaderListView.getHeaderViewsCount();
            int sectionForPosition = (getPartitionForPosition(headerViewsCount) != this.mIndexedPartition || (offsetInPartition = getOffsetInPartition(headerViewsCount)) == -1) ? -1 : getSectionForPosition(offsetInPartition);
            if (sectionForPosition == -1) {
                pinnedHeaderListView.setHeaderInvisible(pinnedHeaderCount, false);
                return;
            }
            View viewAtVisiblePosition = getViewAtVisiblePosition(pinnedHeaderListView, positionAt);
            if (viewAtVisiblePosition != null) {
                this.mHeader.setMinimumHeight(viewAtVisiblePosition.getMeasuredHeight());
            }
            setPinnedSectionTitle(this.mHeader, (String) this.mIndexer.getSections()[sectionForPosition]);
            int positionForPartition = getPositionForPartition(this.mIndexedPartition);
            if (hasHeader(this.mIndexedPartition)) {
                positionForPartition++;
            }
            pinnedHeaderListView.setFadingHeader(pinnedHeaderCount, positionAt, headerViewsCount == (positionForPartition + getPositionForSection(sectionForPosition + 1)) - 1);
        }
    }

    private View getViewAtVisiblePosition(ListView listView, int i) {
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int childCount = listView.getChildCount();
        int i2 = i - firstVisiblePosition;
        if (i2 < 0 || i2 >= childCount) {
            return null;
        }
        return listView.getChildAt(i2);
    }

    public Placement getItemPlacementInSection(int i) {
        if (this.mPlacementCache.position != i) {
            this.mPlacementCache.position = i;
            if (isSectionHeaderDisplayEnabled()) {
                int sectionForPosition = getSectionForPosition(i);
                if (sectionForPosition != -1 && getPositionForSection(sectionForPosition) == i) {
                    Placement placement = this.mPlacementCache;
                    placement.firstInSection = true;
                    placement.sectionHeader = (String) getSections()[sectionForPosition];
                } else {
                    Placement placement2 = this.mPlacementCache;
                    placement2.firstInSection = false;
                    placement2.sectionHeader = null;
                }
                this.mPlacementCache.lastInSection = getPositionForSection(sectionForPosition + 1) - 1 == i;
            } else {
                Placement placement3 = this.mPlacementCache;
                placement3.firstInSection = false;
                placement3.lastInSection = false;
                placement3.sectionHeader = null;
            }
            return this.mPlacementCache;
        }
        return this.mPlacementCache;
    }
}
