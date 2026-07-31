package org.schabi.newpipe.player.gesture;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.android.tools.r8.RecordTag;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class CustomBottomSheetBehavior extends BottomSheetBehavior<FrameLayout> {
    public final Rect globalRect;
    public final List skipInterceptionOfElements;
    public boolean skippingInterception;

    public CustomBottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.globalRect = new Rect();
        int i = 0;
        this.skippingInterception = false;
        Object[] objArr = {Integer.valueOf(R.id.detail_content_root_layout), Integer.valueOf(R.id.relatedItemsLayout), Integer.valueOf(R.id.itemsListPanel), Integer.valueOf(R.id.view_pager), Integer.valueOf(R.id.tab_layout), Integer.valueOf(R.id.bottomControls), Integer.valueOf(R.id.playPauseButton), Integer.valueOf(R.id.playPreviousButton), Integer.valueOf(R.id.playNextButton)};
        ArrayList arrayList = new ArrayList(9);
        while (i < 9) {
            Object obj = objArr[i];
            i = RecordTag.m(obj, arrayList, obj, i, 1);
        }
        this.skipInterceptionOfElements = DesugarCollections.unmodifiableList(arrayList);
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        FrameLayout frameLayout = (FrameLayout) view;
        if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
            this.skippingInterception = false;
        }
        if (this.skippingInterception || this.state == 2) {
            return false;
        }
        this.skipCollapsed = motionEvent.getPointerCount() == 2;
        if (motionEvent.getPointerCount() == 2) {
            return super.onInterceptTouchEvent(coordinatorLayout, frameLayout, motionEvent);
        }
        if (this.state == 3 && motionEvent.getAction() == 0) {
            Iterator it = this.skipInterceptionOfElements.iterator();
            while (it.hasNext()) {
                int intValue = ((Integer) it.next()).intValue();
                View findViewById = frameLayout.findViewById(intValue);
                if (findViewById != null) {
                    Rect rect = this.globalRect;
                    if (findViewById.getGlobalVisibleRect(rect) && rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                        if (intValue == R.id.bottomControls && frameLayout.findViewById(R.id.playbackControlRoot).getVisibility() != 0) {
                            return super.onInterceptTouchEvent(coordinatorLayout, frameLayout, motionEvent);
                        }
                        this.skippingInterception = true;
                        return false;
                    }
                }
            }
        }
        return super.onInterceptTouchEvent(coordinatorLayout, frameLayout, motionEvent);
    }
}
