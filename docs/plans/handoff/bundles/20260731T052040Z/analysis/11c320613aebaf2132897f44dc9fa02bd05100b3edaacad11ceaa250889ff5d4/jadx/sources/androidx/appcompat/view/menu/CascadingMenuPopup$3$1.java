package androidx.appcompat.view.menu;

import android.animation.ValueAnimator;
import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.core.view.WindowInsetsAnimationCompat;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CascadingMenuPopup$3$1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$1;
    public final /* synthetic */ Object val$item;
    public final /* synthetic */ Object val$menu;
    public final /* synthetic */ Object val$nextInfo;

    public CascadingMenuPopup$3$1(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, CardView.AnonymousClass1 anonymousClass1, ValueAnimator valueAnimator) {
        this.$r8$classId = 1;
        this.val$nextInfo = view;
        this.val$item = windowInsetsAnimationCompat;
        this.val$menu = anonymousClass1;
        this.this$1 = valueAnimator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0049, code lost:
    
        if (r0.remove(r8) != null) goto L24;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r8 = this;
            int r0 = r8.$r8$classId
            r1 = 1
            r2 = 0
            java.lang.Object r3 = r8.val$menu
            java.lang.Object r4 = r8.this$1
            java.lang.Object r5 = r8.val$nextInfo
            java.lang.Object r8 = r8.val$item
            switch(r0) {
                case 0: goto La1;
                case 1: goto L92;
                default: goto Lf;
            }
        Lf:
            java.lang.String r8 = (java.lang.String) r8
            coil3.memory.MemoryCacheService r5 = (coil3.memory.MemoryCacheService) r5
            java.lang.Object r0 = r5.imageLoader
            android.os.Messenger r0 = (android.os.Messenger) r0
            android.os.IBinder r0 = r0.getBinder()
            coil3.memory.MemoryCacheService r4 = (coil3.memory.MemoryCacheService) r4
            java.lang.Object r4 = r4.imageLoader
            androidx.media.MediaBrowserServiceCompat r4 = (androidx.media.MediaBrowserServiceCompat) r4
            androidx.collection.ArrayMap r4 = r4.mConnections
            java.lang.Object r0 = r4.get(r0)
            androidx.media.MediaBrowserServiceCompat$ConnectionRecord r0 = (androidx.media.MediaBrowserServiceCompat.ConnectionRecord) r0
            java.lang.String r4 = "MBServiceCompat"
            if (r0 != 0) goto L3f
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "removeSubscription for callback that isn't registered id="
            r0.<init>(r1)
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            android.util.Log.w(r4, r8)
            goto L91
        L3f:
            java.util.HashMap r0 = r0.subscriptions
            android.os.IBinder r3 = (android.os.IBinder) r3
            if (r3 != 0) goto L4e
            java.lang.Object r0 = r0.remove(r8)
            if (r0 == 0) goto L4c
            goto L79
        L4c:
            r1 = r2
            goto L79
        L4e:
            java.lang.Object r5 = r0.get(r8)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L4c
            java.util.Iterator r6 = r5.iterator()
        L5a:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L6f
            java.lang.Object r7 = r6.next()
            androidx.core.util.Pair r7 = (androidx.core.util.Pair) r7
            java.lang.Object r7 = r7.first
            if (r3 != r7) goto L5a
            r6.remove()
            r2 = r1
            goto L5a
        L6f:
            int r1 = r5.size()
            if (r1 != 0) goto L4c
            r0.remove(r8)
            goto L4c
        L79:
            if (r1 != 0) goto L91
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "removeSubscription called for "
            r0.<init>(r1)
            r0.append(r8)
            java.lang.String r8 = " which is not subscribed"
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            android.util.Log.w(r4, r8)
        L91:
            return
        L92:
            android.view.View r5 = (android.view.View) r5
            androidx.core.view.WindowInsetsAnimationCompat r8 = (androidx.core.view.WindowInsetsAnimationCompat) r8
            androidx.cardview.widget.CardView$1 r3 = (androidx.cardview.widget.CardView.AnonymousClass1) r3
            androidx.core.view.WindowInsetsAnimationCompat.Impl21.dispatchOnStart(r5, r8, r3)
            android.animation.ValueAnimator r4 = (android.animation.ValueAnimator) r4
            r4.start()
            return
        La1:
            androidx.appcompat.widget.PopupMenu$1 r4 = (androidx.appcompat.widget.PopupMenu$1) r4
            java.lang.Object r0 = r4.this$0
            androidx.appcompat.view.menu.CascadingMenuPopup r0 = (androidx.appcompat.view.menu.CascadingMenuPopup) r0
            androidx.appcompat.view.menu.MenuItemImpl r8 = (androidx.appcompat.view.menu.MenuItemImpl) r8
            androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo r5 = (androidx.appcompat.view.menu.CascadingMenuPopup.CascadingMenuInfo) r5
            if (r5 == 0) goto Lb6
            r0.mShouldCloseImmediately = r1
            androidx.appcompat.view.menu.MenuBuilder r1 = r5.menu
            r1.close(r2)
            r0.mShouldCloseImmediately = r2
        Lb6:
            boolean r0 = r8.isEnabled()
            if (r0 == 0) goto Lc9
            boolean r0 = r8.hasSubMenu()
            if (r0 == 0) goto Lc9
            androidx.appcompat.view.menu.MenuBuilder r3 = (androidx.appcompat.view.menu.MenuBuilder) r3
            r0 = 4
            r1 = 0
            r3.performItemAction(r8, r1, r0)
        Lc9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.CascadingMenuPopup$3$1.run():void");
    }

    public /* synthetic */ CascadingMenuPopup$3$1(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.this$1 = obj;
        this.val$nextInfo = obj2;
        this.val$item = obj3;
        this.val$menu = obj4;
    }
}
