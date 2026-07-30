package com.android.launcher3.allapps;

import b.m.b.F;
import b.m.b.w0;

/* loaded from: classes.dex */
public class AllAppsFastScrollHelper {
    public w0 mLastSelectedViewHolder;
    public AllAppsRecyclerView mRv;
    public int mTargetFastScrollPosition = -1;

    public class MyScroller extends F {
        public final int mTargetPosition;

        public MyScroller(int i) {
            super(AllAppsFastScrollHelper.this.mRv.getContext());
            this.mTargetPosition = i;
            super.mTargetPosition = i;
        }

        @Override // b.m.b.F
        public int getVerticalSnapPreference() {
            return -1;
        }

        @Override // b.m.b.F
        public void onStart() {
            int i = this.mTargetPosition;
            AllAppsFastScrollHelper allAppsFastScrollHelper = AllAppsFastScrollHelper.this;
            if (i != allAppsFastScrollHelper.mTargetFastScrollPosition) {
                AllAppsFastScrollHelper.access$300(allAppsFastScrollHelper, false);
                AllAppsFastScrollHelper.this.mLastSelectedViewHolder = null;
            }
        }

        @Override // b.m.b.F
        public void onStop() {
            this.mInterimTargetDy = 0;
            this.mInterimTargetDx = 0;
            this.mTargetVector = null;
            int i = this.mTargetPosition;
            AllAppsFastScrollHelper allAppsFastScrollHelper = AllAppsFastScrollHelper.this;
            if (i != allAppsFastScrollHelper.mTargetFastScrollPosition) {
                return;
            }
            w0 findViewHolderForAdapterPosition = allAppsFastScrollHelper.mRv.findViewHolderForAdapterPosition(i);
            AllAppsFastScrollHelper allAppsFastScrollHelper2 = AllAppsFastScrollHelper.this;
            if (findViewHolderForAdapterPosition == allAppsFastScrollHelper2.mLastSelectedViewHolder) {
                return;
            }
            AllAppsFastScrollHelper.access$300(allAppsFastScrollHelper2, false);
            AllAppsFastScrollHelper allAppsFastScrollHelper3 = AllAppsFastScrollHelper.this;
            allAppsFastScrollHelper3.mLastSelectedViewHolder = findViewHolderForAdapterPosition;
            AllAppsFastScrollHelper.access$300(allAppsFastScrollHelper3, true);
        }
    }

    public AllAppsFastScrollHelper(AllAppsRecyclerView allAppsRecyclerView) {
        this.mRv = allAppsRecyclerView;
    }

    public static void access$300(AllAppsFastScrollHelper allAppsFastScrollHelper, boolean z) {
        w0 w0Var = allAppsFastScrollHelper.mLastSelectedViewHolder;
        if (w0Var != null) {
            w0Var.itemView.setActivated(z);
            allAppsFastScrollHelper.mLastSelectedViewHolder.setIsRecyclable(!z);
        }
    }
}
