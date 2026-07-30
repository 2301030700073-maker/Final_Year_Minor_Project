package c.b.a.b.b.l;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import androidx.recyclerview.widget.GridLayoutManager;
import b.m.b.AbstractC0201z;
import b.m.b.C0200y;
import b.m.b.w0;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.appprediction.ComponentKeyMapper;
import com.android.launcher3.appprediction.PredictionRowView;
import com.android.launcher3.appprediction.PredictionUiStateManager;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.icons.BitmapRenderer;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.qsb.LongClickReceiver;
import com.google.android.apps.nexuslauncher.search.AppSearchProvider;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class D {

    /* renamed from: a, reason: collision with root package name */
    public final A f2622a;

    /* renamed from: b, reason: collision with root package name */
    public final NexusLauncherActivity f2623b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2624c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f2625d = {0, 0};
    public final Bundle e = new Bundle();
    public final c.b.a.b.b.n.q.c f = new c.b.a.b.b.n.q.c();
    public final String g;
    public BubbleTextView h;
    public int i;

    public D(A a2, boolean z, String str, int i) {
        this.f2622a = a2;
        this.f2623b = a2.h();
        this.f2624c = z;
        this.g = str;
        this.f.q = i;
    }

    public static Point f(View view, Rect rect) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        Point point = new Point();
        point.x = (view.getWidth() / 2) + (iArr[0] - rect.left);
        point.y = (view.getHeight() / 2) + (iArr[1] - rect.top);
        return point;
    }

    public static c.b.a.b.b.n.q.a g(View view) {
        c.b.a.b.b.n.q.a aVar = new c.b.a.b.b.n.q.a();
        aVar.f2779c = view.getWidth();
        aVar.f2780d = view.getHeight();
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        aVar.f2777a = iArr[0];
        aVar.f2778b = iArr[1];
        return aVar;
    }

    public byte[] a() {
        int width;
        int i;
        BubbleTextView bubbleTextView;
        int spanGroupIndex;
        this.f.f2785a = b.e.d.a.f(b.l.W.getAttrColor(this.f2623b, R.attr.allAppsScrimColor), GraphicsUtils.setColorAlphaBound(((WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(this.f2623b)).mExtractionInfo.mainColor, 255));
        this.f.f2786b = b.l.W.getAttrBoolean(this.f2623b, R.attr.isMainColorDark);
        int i2 = 0;
        if (this.f2624c) {
            int i3 = this.f2623b.getDeviceProfile().inv.numAllAppsColumns;
            this.f.g = i3;
            PredictionRowView predictionRowView = (PredictionRowView) d().mHeader.findFixedRowByType(PredictionRowView.class);
            ArrayList arrayList = predictionRowView.mPredictedApps;
            int min = Math.min(arrayList.size(), i3);
            this.f.h = new c.b.a.b.b.n.q.b[min];
            boolean z = false;
            for (int i4 = 0; i4 < min; i4++) {
                this.f.h[i4] = e((ItemInfoWithIcon) arrayList.get(i4), i4);
                z = z || ((ItemInfoWithIcon) arrayList.get(i4)).usingLowResIcon();
            }
            if (z) {
                this.f.h = new c.b.a.b.b.n.q.b[0];
            }
            if (predictionRowView.isShown()) {
                int i5 = 0;
                while (true) {
                    if (i5 >= predictionRowView.getChildCount()) {
                        break;
                    }
                    if (predictionRowView.getChildAt(i5) instanceof BubbleTextView) {
                        this.h = (BubbleTextView) predictionRowView.getChildAt(i5);
                        break;
                    }
                    i5++;
                }
                if (this.h == null) {
                    h();
                }
                c.b.a.b.b.n.q.a g = g(predictionRowView);
                g.f2777a = predictionRowView.getPaddingLeft() + g.f2777a;
                g.f2779c -= predictionRowView.getPaddingRight() + predictionRowView.getPaddingLeft();
                g.f2778b = predictionRowView.getPaddingTop() + g.f2778b;
                int paddingTop = g.f2780d - (predictionRowView.getPaddingTop() + predictionRowView.getPaddingBottom());
                g.f2780d = paddingTop;
                this.f.e = g;
                int i6 = g.f2778b;
                this.i = i6;
                if (z) {
                    g.f2778b = i6 - paddingTop;
                }
            } else {
                AllAppsRecyclerView activeRecyclerView = d().getActiveRecyclerView();
                AbstractC0201z abstractC0201z = ((GridLayoutManager) activeRecyclerView.getLayoutManager()).mSpanSizeLookup;
                int childCount = activeRecyclerView.getChildCount();
                BubbleTextView[] bubbleTextViewArr = new BubbleTextView[i3];
                int i7 = -1;
                int i8 = 0;
                while (true) {
                    if (i8 >= childCount) {
                        bubbleTextView = null;
                        break;
                    }
                    w0 childViewHolder = activeRecyclerView.getChildViewHolder(activeRecyclerView.getChildAt(i8));
                    if ((childViewHolder.itemView instanceof BubbleTextView) && (spanGroupIndex = abstractC0201z.getSpanGroupIndex(childViewHolder.getLayoutPosition(), i3)) >= 0) {
                        if (i7 < 0) {
                            i7 = spanGroupIndex;
                        } else if (spanGroupIndex != i7) {
                            bubbleTextView = (BubbleTextView) childViewHolder.itemView;
                            break;
                        }
                        bubbleTextViewArr[((C0200y) childViewHolder.itemView.getLayoutParams()).e] = (BubbleTextView) childViewHolder.itemView;
                    }
                    i8++;
                }
                if (bubbleTextViewArr[0] == null) {
                    Log.e("ConfigBuilder", "No icons rendered in all apps");
                    h();
                } else {
                    this.h = bubbleTextViewArr[0];
                    c.b.a.b.b.n.q.a g2 = g(bubbleTextViewArr[i3 - 1]);
                    c.b.a.b.b.n.q.a g3 = g(bubbleTextViewArr[0]);
                    if (Utilities.isRtl(this.f2623b.getResources())) {
                        g3 = g2;
                        g2 = g3;
                    }
                    g3.f2779c = (g2.f2777a + g2.f2779c) - g3.f2777a;
                    this.f.e = g3;
                    if (bubbleTextView != null) {
                        c.b.a.b.b.n.q.a g4 = g(bubbleTextView);
                        g4.f2779c = g3.f2779c;
                        this.f.f = g4;
                    }
                    c();
                    c.b.a.b.b.n.q.c cVar = this.f;
                    c.b.a.b.b.n.q.a aVar = cVar.e;
                    int i9 = aVar.f2778b;
                    this.i = i9;
                    aVar.f2778b = i9 - aVar.f2780d;
                    c.b.a.b.b.n.q.a aVar2 = cVar.f;
                    aVar2.f2778b -= aVar2.f2780d;
                }
            }
        } else {
            h();
        }
        this.f.f2787c = "icon_view_template";
        Bundle bundle = this.e;
        RemoteViews remoteViews = new RemoteViews(this.f2623b.getPackageName(), R.layout.apps_search_icon_template);
        BubbleTextView bubbleTextView2 = this.h;
        int i10 = bubbleTextView2.mIconSize;
        int width2 = (bubbleTextView2.getWidth() - i10) / 2;
        int paddingTop2 = this.h.getPaddingTop();
        int height = (this.h.getHeight() - i10) - paddingTop2;
        remoteViews.setViewPadding(android.R.id.icon, width2, paddingTop2, width2, height);
        int min2 = Math.min((int) (i10 * 0.12f), Math.min(width2, Math.min(paddingTop2, height)));
        int i11 = width2 - min2;
        remoteViews.setViewPadding(R.id.click_feedback_wrapper, i11, paddingTop2 - min2, i11, height - min2);
        remoteViews.setTextViewTextSize(android.R.id.title, 0, this.f2623b.getDeviceProfile().allAppsIconTextSizePx);
        int paddingLeft = this.h.getPaddingLeft();
        BubbleTextView bubbleTextView3 = this.h;
        remoteViews.setViewPadding(android.R.id.title, paddingLeft, bubbleTextView3.getCompoundDrawablePadding() + bubbleTextView3.mIconSize, this.h.getPaddingRight(), 0);
        SparseArray sparseArray = IconShape.sInstance.mAttrs;
        remoteViews.setInt(R.id.icon_click_feedback, "setBackgroundResource", (sparseArray == null ? null : (TypedValue) sparseArray.get(R.attr.searchIconClickFeedback)).resourceId);
        bundle.putParcelable("icon_view_template", remoteViews);
        this.f.f2788d = "icon_long_click";
        this.e.putParcelable(this.f.f2788d, PendingIntent.getBroadcast(this.f2623b, 2055, new Intent().setComponent(new ComponentName(this.f2623b, (Class<?>) LongClickReceiver.class)).addFlags(268435456), 134217728));
        if (this.f2622a.getVisibility() != 0) {
            this.f.i = g(this.f2623b.mDragLayer);
            c.b.a.b.b.n.q.a aVar3 = this.f.i;
            aVar3.f2777a = i(aVar3) + aVar3.f2777a;
            this.f.i.f2778b += this.f2623b.getDeviceProfile().mInsets.top;
            this.f.i.f2780d = this.f2623b.getResources().getDimensionPixelSize(R.dimen.qsb_widget_height);
        } else {
            this.f.i = g(this.f2622a);
        }
        this.f.o = this.f2624c && this.f2623b.isInState(LauncherState.ALL_APPS);
        c.b.a.b.b.n.q.c cVar2 = this.f;
        if (cVar2.o) {
            cVar2.s = 2;
            cVar2.j = "search_box_template";
            Bundle bundle2 = this.e;
            A a2 = this.f2622a;
            RemoteViews remoteViews2 = new RemoteViews(this.f2623b.getPackageName(), a2.o ? R.layout.apps_search_qsb_template_two_bubbles : a2.z ? R.layout.apps_search_qsb_template_hint_end : R.layout.apps_search_qsb_template_hint_centered);
            int height2 = ((this.f2622a.getHeight() - this.f2622a.getPaddingTop()) - this.f2622a.getPaddingBottom()) + 20;
            A a3 = this.f2622a;
            a3.n();
            float f = a3.v;
            y yVar = a3.t;
            Bitmap bitmap = f > 0.5f ? yVar.e : yVar.f2701d;
            int width3 = (bitmap.getWidth() - height2) / 2;
            int height3 = (this.f2622a.getHeight() - bitmap.getHeight()) / 2;
            int paddingLeft2 = this.f2622a.getPaddingLeft() - width3;
            int paddingRight = this.f2622a.getPaddingRight() - width3;
            A a4 = this.f2622a;
            if (!a4.o) {
                remoteViews2.setViewPadding(R.id.qsb_background_container, paddingLeft2, height3, paddingRight, height3);
            } else if (a4.j) {
                remoteViews2.setViewPadding(R.id.qsb_background_container, a4.k() + paddingLeft2, height3, paddingRight, height3);
            } else {
                remoteViews2.setViewPadding(R.id.qsb_background_container, paddingLeft2, height3, a4.k() + paddingRight, height3);
            }
            Bitmap createBitmap = BitmapRenderer.createBitmap(bitmap, 0, 0, bitmap.getWidth() / 2, bitmap.getHeight());
            remoteViews2.setImageViewBitmap(R.id.qsb_background_1, createBitmap);
            remoteViews2.setImageViewBitmap(R.id.qsb_background_3, createBitmap);
            Bitmap createBitmap2 = BitmapRenderer.createBitmap(bitmap, (bitmap.getWidth() - 20) / 2, 0, 20, bitmap.getHeight());
            remoteViews2.setImageViewBitmap(R.id.qsb_background_2, createBitmap2);
            A a5 = this.f2622a;
            if (a5.o) {
                if (a5.j) {
                    i = (a5.getWidth() - paddingLeft2) - this.f2622a.g();
                    width = paddingLeft2;
                } else {
                    width = (a5.getWidth() - paddingRight) - this.f2622a.g();
                    i = paddingRight;
                }
                remoteViews2.setViewPadding(R.id.mic_background_container, width, height3, i, height3);
                remoteViews2.setImageViewBitmap(R.id.mic_background_1, createBitmap);
                remoteViews2.setImageViewBitmap(R.id.mic_background_2, createBitmap2);
                remoteViews2.setImageViewBitmap(R.id.mic_background_3, createBitmap);
            }
            if (TextUtils.isEmpty(this.f2622a.y)) {
                remoteViews2.setViewVisibility(R.id.qsb_hint, 8);
            } else {
                if (this.f2622a.b()) {
                    A a6 = this.f2622a;
                    if (a6.j) {
                        remoteViews2.setViewPadding(R.id.qsb_hint, a6.f() + paddingLeft2, 0, 0, 0);
                    } else {
                        remoteViews2.setViewPadding(R.id.qsb_hint, 0, 0, a6.f() + paddingRight, 0);
                    }
                }
                remoteViews2.setTextViewText(R.id.qsb_hint, this.f2622a.y);
            }
            int visibility = this.f2622a.q.getVisibility();
            int i12 = R.id.mic_icon;
            if (visibility != 0) {
                remoteViews2.setViewVisibility(R.id.mic_icon, 4);
            }
            View findViewById = this.f2622a.findViewById(R.id.g_icon);
            int width4 = this.f2622a.getLayoutDirection() == 1 ? this.f2622a.getWidth() - findViewById.getRight() : findViewById.getLeft();
            remoteViews2.setViewPadding(R.id.qsb_icon_container, width4, 0, width4, 0);
            bundle2.putParcelable("search_box_template", remoteViews2);
            c.b.a.b.b.n.q.c cVar3 = this.f;
            cVar3.k = R.id.g_icon;
            if (this.f2622a.q.getVisibility() != 0) {
                i12 = 0;
            }
            cVar3.l = i12;
            c.b.a.b.b.n.q.a g5 = g(this.f2623b.mDragLayer);
            int i13 = this.i;
            g5.f2778b += i13;
            int i14 = g5.f2780d - i13;
            g5.f2780d = i14;
            c.b.a.b.b.n.q.c cVar4 = this.f;
            cVar4.n = g5;
            cVar4.m = "preview_bitmap";
            int i15 = g5.f2779c;
            if (i15 <= 0 || i14 <= 0) {
                StringBuilder f2 = c.a.c.a.a.f("Invalid preview bitmap size. width: ");
                f2.append(g5.f2779c);
                f2.append("hight: ");
                f2.append(g5.f2780d);
                f2.append(" top shift: ");
                f2.append(i13);
                Log.e("ConfigBuilder", f2.toString());
                g5.f2777a = 0;
                g5.f2778b = 0;
                g5.f2780d = 1;
                g5.f2779c = 1;
                Bitmap createBitmap3 = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
                createBitmap3.setPixel(0, 0, 0);
                this.e.putParcelable(this.f.m, createBitmap3);
            } else {
                GraphicsUtils.a();
                Picture picture = new Picture();
                Canvas beginRecording = picture.beginRecording(i15, i14);
                int save = beginRecording.save();
                beginRecording.translate(RecentsState.NO_OFFSET, -i13);
                AllAppsContainerView allAppsContainerView = this.f2623b.mAppsView;
                View view = allAppsContainerView.mViewPager;
                if (view == null) {
                    view = allAppsContainerView.findViewById(R.id.apps_list_view);
                }
                b(beginRecording, view);
                b(beginRecording, this.f2623b.mAppsView.mHeader);
                beginRecording.restoreToCount(save);
                picture.endRecording();
                this.e.putParcelable(this.f.m, Bitmap.createBitmap(picture));
            }
        } else if (this.f2623b.isInState(LauncherState.OVERVIEW)) {
            this.f.s = 3;
        } else if (this.f2623b.isInState(LauncherState.NORMAL)) {
            this.f.s = 1;
        } else {
            this.f.s = 0;
        }
        this.f.p = this.f2622a.l();
        c.b.a.b.b.n.q.c cVar5 = this.f;
        c.b.a.b.b.f.f fVar = ((H) this.f2622a).J;
        if (fVar != null) {
            if (c.b.a.b.b.f.f.v) {
                StringBuilder f3 = c.a.c.a.a.f("getCurrentLoop=");
                f3.append(fVar.e);
                Log.d("DoodleView", f3.toString());
            }
            i2 = fVar.e;
        }
        cVar5.r = i2;
        c.b.a.b.b.n.q.d dVar = new c.b.a.b.b.n.q.d();
        dVar.f2789a = this.f;
        String str = this.g;
        if (str == null) {
            str = "";
        }
        dVar.f2790b = str;
        return c.b.b.a1.e.toByteArray(dVar);
    }

    public final void b(Canvas canvas, View view) {
        int[] iArr = this.f2625d;
        iArr[1] = 0;
        iArr[0] = 0;
        this.f2623b.mDragLayer.mapCoordInSelfToDescendant(view, iArr);
        int[] iArr2 = this.f2625d;
        canvas.translate(-iArr2[0], -iArr2[1]);
        view.draw(canvas);
        int[] iArr3 = this.f2625d;
        canvas.translate(iArr3[0], iArr3[1]);
    }

    public final void c() {
        c.b.a.b.b.n.q.c cVar = this.f;
        if (cVar.f != null) {
            return;
        }
        c.b.a.b.b.n.q.a aVar = cVar.e;
        c.b.a.b.b.n.q.a aVar2 = new c.b.a.b.b.n.q.a();
        aVar2.f2777a = aVar.f2777a;
        int i = aVar.f2778b;
        int i2 = aVar.f2780d;
        aVar2.f2778b = i + i2;
        aVar2.f2780d = i2;
        aVar2.f2779c = aVar.f2779c;
        this.f.f = aVar2;
    }

    public final AllAppsContainerView d() {
        return (AllAppsContainerView) this.f2623b.findViewById(R.id.apps_view);
    }

    public final c.b.a.b.b.n.q.b e(ItemInfoWithIcon itemInfoWithIcon, int i) {
        Uri build;
        c.b.a.b.b.n.q.b bVar = new c.b.a.b.b.n.q.b();
        bVar.f2781a = itemInfoWithIcon.title.toString();
        String c2 = c.a.c.a.a.c("icon_bitmap_", i);
        bVar.f2783c = c2;
        this.e.putParcelable(c2, AppSearchProvider.b(itemInfoWithIcon));
        if (itemInfoWithIcon instanceof AppInfo) {
            AppInfo appInfo = (AppInfo) itemInfoWithIcon;
            build = AppSearchProvider.a(appInfo.componentName, appInfo).buildUpon().appendQueryParameter("iconType", "app").build();
        } else {
            if (!(itemInfoWithIcon instanceof WorkspaceItemInfo)) {
                return null;
            }
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfoWithIcon;
            build = AppSearchProvider.a(workspaceItemInfo.getTargetComponent(), workspaceItemInfo).buildUpon().appendQueryParameter("iconType", "deepshortcut").appendQueryParameter("deepshortcut_id", workspaceItemInfo.getDeepShortcutId()).build();
        }
        bVar.f2784d = build.toString();
        bVar.f2782b = new Intent("com.google.android.apps.nexuslauncher.search.APP_LAUNCH", build.buildUpon().appendQueryParameter("predictionRank", Integer.toString(i)).build()).toUri(0);
        return bVar;
    }

    public final void h() {
        DeviceProfile deviceProfile = this.f2623b.getDeviceProfile();
        this.f.g = deviceProfile.inv.numAllAppsColumns;
        c.b.a.b.b.n.q.a aVar = new c.b.a.b.b.n.q.a();
        if (deviceProfile.isVerticalBarLayout()) {
            aVar.f2777a = i(aVar);
        } else {
            int dimensionPixelSize = this.f2623b.getResources().getDimensionPixelSize(R.dimen.dynamic_grid_edge_margin);
            aVar.f2777a = dimensionPixelSize;
            aVar.f2779c = (this.f2623b.mHotseat.getWidth() - dimensionPixelSize) - dimensionPixelSize;
        }
        aVar.f2780d = deviceProfile.allAppsCellHeightPx;
        this.f.e = aVar;
        c();
        AllAppsContainerView d2 = d();
        AlphabeticalAppsList apps = d2.getApps();
        int i = 0;
        BubbleTextView bubbleTextView = (BubbleTextView) this.f2623b.getLayoutInflater().inflate(R.layout.all_apps_icon, (ViewGroup) d().getActiveRecyclerView(), false);
        this.h = bubbleTextView;
        ViewGroup.LayoutParams layoutParams = bubbleTextView.getLayoutParams();
        layoutParams.height = aVar.f2780d;
        layoutParams.width = aVar.f2779c / this.f.g;
        if (!apps.mApps.isEmpty()) {
            this.h.applyFromApplicationInfo((AppInfo) apps.mApps.get(0));
        }
        this.h.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
        this.h.layout(0, 0, layoutParams.width, layoutParams.height);
        ArrayList arrayList = new ArrayList(this.f.g);
        Iterator it = ((PredictionUiStateManager) PredictionUiStateManager.INSTANCE.b(this.f2623b)).mCurrentState.apps.iterator();
        while (it.hasNext()) {
            ItemInfoWithIcon app = ((ComponentKeyMapper) it.next()).getApp(d2.mAllAppsStore);
            if (app != null) {
                c.b.a.b.b.n.q.b e = e(app, i);
                if (e != null && !app.usingLowResIcon()) {
                    arrayList.add(e);
                    i++;
                }
                if (i >= this.f.g) {
                    break;
                }
            }
        }
        this.f.h = (c.b.a.b.b.n.q.b[]) arrayList.toArray(new c.b.a.b.b.n.q.b[arrayList.size()]);
    }

    public final int i(c.b.a.b.b.n.q.a aVar) {
        DeviceProfile deviceProfile = this.f2623b.getDeviceProfile();
        int i = deviceProfile.desiredWorkspaceLeftRightMarginPx + deviceProfile.cellLayoutPaddingLeftRightPx;
        Rect rect = deviceProfile.mInsets;
        int i2 = rect.left + i + deviceProfile.workspacePadding.left;
        aVar.f2779c = (((this.f2623b.mDragLayer.getWidth() - i2) - rect.right) - i) - deviceProfile.workspacePadding.right;
        return i2;
    }
}
