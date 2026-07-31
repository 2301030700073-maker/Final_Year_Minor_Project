package org.wikipedia.util;

import android.os.Build;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.AndroidComposeView$$ExternalSyntheticLambda3;
import androidx.compose.ui.platform.TestTagKt;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.events.WebViewInvalidateEvent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DeviceUtil$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ DeviceUtil$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 0;
        switch (this.$r8$classId) {
            case 0:
                System.exit(0);
                throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
            case 1:
                MutableObjectList mutableObjectList = AndroidComposeView.composeViews;
                synchronized (mutableObjectList) {
                    try {
                        int i2 = Build.VERSION.SDK_INT;
                        Object[] objArr = mutableObjectList.content;
                        int i3 = mutableObjectList._size;
                        if (i2 < 30) {
                            while (i < i3) {
                                AndroidComposeView androidComposeView = (AndroidComposeView) objArr[i];
                                boolean showLayoutBounds = androidComposeView.getShowLayoutBounds();
                                Class cls = AndroidComposeView.systemPropertiesClass;
                                androidComposeView.setShowLayoutBounds(TestTagKt.getIsShowingLayoutBounds());
                                if (showLayoutBounds != androidComposeView.getShowLayoutBounds()) {
                                    androidComposeView.post(new AndroidComposeView$$ExternalSyntheticLambda3(androidComposeView, 2));
                                }
                                i++;
                            }
                        } else {
                            while (i < i3) {
                                AndroidComposeView androidComposeView2 = (AndroidComposeView) objArr[i];
                                androidComposeView2.post(new AndroidComposeView$$ExternalSyntheticLambda3(androidComposeView2, 3));
                                i++;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 2:
                TestKitchenAdapter.client.eventProcessor.sendEnqueuedEvents();
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                Jsoup.getInstance().getMainThreadHandler().postDelayed(TestKitchenAdapter.flushEventsRunnable, 30000L);
                return;
            default:
                FlowEventBus.post(new WebViewInvalidateEvent());
                return;
        }
    }
}
