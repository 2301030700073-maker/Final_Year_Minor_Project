package com.google.android.apps.nexuslauncher.qsb.longpopup;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import c.b.a.b.b.l.Y.h;
import c.b.a.b.b.l.Y.i;
import c.b.a.b.b.l.Y.l;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.util.SystemUiController;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.WidgetCell;
import com.android.launcher3.widget.WidgetImageView;
import com.android.launcher3.widget.WidgetsBottomSheet;
import com.google.android.apps.nexuslauncher.qsb.longpopup.SearchWidgetPopup;
import java.util.Objects;

/* loaded from: classes.dex */
public class SearchWidgetPopup extends WidgetsBottomSheet {

    /* renamed from: a, reason: collision with root package name */
    public i f3316a;

    /* renamed from: b, reason: collision with root package name */
    public h f3317b;

    /* renamed from: c, reason: collision with root package name */
    public final Point f3318c;

    public SearchWidgetPopup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3318c = new Point();
    }

    public static boolean a(SearchWidgetPopup searchWidgetPopup, View view, MotionEvent motionEvent) {
        Objects.requireNonNull(searchWidgetPopup);
        if (motionEvent.getAction() != 0 && motionEvent.getAction() != 2) {
            return false;
        }
        searchWidgetPopup.f3318c.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return false;
    }

    @Override // com.android.launcher3.widget.WidgetsBottomSheet
    public WidgetCell addItemCell(ViewGroup viewGroup) {
        WidgetCell addItemCell = super.addItemCell(viewGroup);
        addItemCell.setOnTouchListener(new View.OnTouchListener() { // from class: c.b.a.b.b.l.Y.d
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                SearchWidgetPopup.a(SearchWidgetPopup.this, view, motionEvent);
                return false;
            }
        });
        return addItemCell;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public BaseDragLayer getPopupContainer() {
        return this.f3316a;
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet
    public SystemUiController getSystemUiController() {
        return this.f3317b.f;
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet, android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (!ItemLongClickListener.canStartDrag(this.mLauncher)) {
            return false;
        }
        if (view instanceof WidgetCell) {
            WidgetImageView widgetImageView = ((WidgetCell) view).mWidgetImage;
            if (widgetImageView.mBitmap == null) {
                return false;
            }
            Rect bitmapBounds = widgetImageView.getBitmapBounds();
            bitmapBounds.offset(widgetImageView.getLeft() - this.f3318c.x, widgetImageView.getTop() - this.f3318c.y);
            this.f3317b.c(new l(bitmapBounds, (PendingAddItemInfo) view.getTag()), view);
        }
        return true;
    }

    public SearchWidgetPopup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3318c = new Point();
    }
}
