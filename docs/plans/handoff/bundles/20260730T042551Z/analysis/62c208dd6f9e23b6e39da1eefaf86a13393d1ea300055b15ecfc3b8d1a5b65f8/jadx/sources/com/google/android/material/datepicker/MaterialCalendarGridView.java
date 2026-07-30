package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.joeykrim.rootcheck.R;
import defpackage.C3712sw;
import defpackage.C3738tL;
import defpackage.C3893w;
import defpackage.C3900w6;
import defpackage.Cimplements;
import defpackage.NJ;
import defpackage.QK;
import java.util.Calendar;
import java.util.Iterator;

/* loaded from: classes3.dex */
final class MaterialCalendarGridView extends GridView {

    /* renamed from: do, reason: not valid java name */
    public final Calendar f10919do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f10920do;

    /* renamed from: com.google.android.material.datepicker.MaterialCalendarGridView$do, reason: invalid class name */
    public class Cdo extends Cimplements {
        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            View.AccessibilityDelegate accessibilityDelegate = ((Cimplements) this).f13562do;
            AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setCollectionInfo(null);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final Cgoto getAdapter2() {
        return (Cgoto) super.getAdapter();
    }

    /* renamed from: if, reason: not valid java name */
    public final View m5792if(int i) {
        return getChildAt(i - getFirstVisiblePosition());
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int m5806if;
        int width;
        int m5806if2;
        int width2;
        int i;
        int i2;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        Cgoto adapter = getAdapter();
        DateSelector<?> dateSelector = adapter.f11008do;
        C3900w6 c3900w6 = adapter.f11012do;
        int max = Math.max(adapter.m5806if(), getFirstVisiblePosition());
        int m5806if3 = adapter.m5806if();
        Month month = adapter.f11010do;
        int min = Math.min((m5806if3 + month.f10922case) - 1, getLastVisiblePosition());
        Long item = adapter.getItem(max);
        Long item2 = adapter.getItem(min);
        Iterator it = dateSelector.mo5789return().iterator();
        while (it.hasNext()) {
            C3712sw c3712sw = (C3712sw) it.next();
            Object obj = c3712sw.f15568do;
            if (obj != null) {
                Object obj2 = c3712sw.f15569if;
                if (obj2 != null) {
                    long longValue = ((Long) obj).longValue();
                    long longValue2 = ((Long) obj2).longValue();
                    Long valueOf = Long.valueOf(longValue);
                    Long valueOf2 = Long.valueOf(longValue2);
                    if (!(item == null || item2 == null || valueOf == null || valueOf2 == null || valueOf.longValue() > item2.longValue() || valueOf2.longValue() < item.longValue())) {
                        boolean m8282else = C3738tL.m8282else(this);
                        long longValue3 = item.longValue();
                        Calendar calendar = materialCalendarGridView.f10919do;
                        if (longValue < longValue3) {
                            width = max % month.f10927try == 0 ? 0 : !m8282else ? materialCalendarGridView.m5792if(max - 1).getRight() : materialCalendarGridView.m5792if(max - 1).getLeft();
                            m5806if = max;
                        } else {
                            calendar.setTimeInMillis(longValue);
                            m5806if = adapter.m5806if() + (calendar.get(5) - 1);
                            View m5792if = materialCalendarGridView.m5792if(m5806if);
                            width = (m5792if.getWidth() / 2) + m5792if.getLeft();
                        }
                        if (longValue2 > item2.longValue()) {
                            width2 = (min + 1) % month.f10927try == 0 ? getWidth() : !m8282else ? materialCalendarGridView.m5792if(min).getRight() : materialCalendarGridView.m5792if(min).getLeft();
                            m5806if2 = min;
                        } else {
                            calendar.setTimeInMillis(longValue2);
                            m5806if2 = adapter.m5806if() + (calendar.get(5) - 1);
                            View m5792if2 = materialCalendarGridView.m5792if(m5806if2);
                            width2 = (m5792if2.getWidth() / 2) + m5792if2.getLeft();
                        }
                        int itemId = (int) adapter.getItemId(m5806if);
                        int i3 = max;
                        int i4 = min;
                        int itemId2 = (int) adapter.getItemId(m5806if2);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            Cgoto cgoto = adapter;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View m5792if3 = materialCalendarGridView.m5792if(numColumns);
                            int top = m5792if3.getTop() + c3900w6.f16202do.f16014do.top;
                            Iterator it2 = it;
                            int bottom = m5792if3.getBottom() - c3900w6.f16202do.f16014do.bottom;
                            if (m8282else) {
                                int i5 = m5806if2 > numColumns2 ? 0 : width2;
                                int width3 = numColumns > m5806if ? getWidth() : width;
                                i = i5;
                                i2 = width3;
                            } else {
                                i = numColumns > m5806if ? 0 : width;
                                i2 = m5806if2 > numColumns2 ? getWidth() : width2;
                            }
                            canvas.drawRect(i, top, i2, bottom, c3900w6.f16201do);
                            itemId++;
                            materialCalendarGridView = this;
                            itemId2 = itemId2;
                            adapter = cgoto;
                            it = it2;
                        }
                        materialCalendarGridView = this;
                        max = i3;
                        min = i4;
                    }
                }
            } else {
                materialCalendarGridView = this;
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        if (!z) {
            super.onFocusChanged(false, i, rect);
            return;
        }
        if (i == 33) {
            Cgoto adapter = getAdapter();
            setSelection((adapter.m5806if() + adapter.f11010do.f10922case) - 1);
        } else if (i == 130) {
            setSelection(getAdapter().m5806if());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().m5806if()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter().m5806if());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i, int i2) {
        if (!this.f10920do) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i) {
        if (i < getAdapter().m5806if()) {
            super.setSelection(getAdapter().m5806if());
        } else {
            super.setSelection(i);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10919do = NJ.m1521this(null);
        if (Celse.m5797case(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.f10920do = Celse.m5798else(getContext(), R.attr.nestedScrollable);
        QK.m1858native(this, new Cdo());
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof Cgoto)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), Cgoto.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }
}
