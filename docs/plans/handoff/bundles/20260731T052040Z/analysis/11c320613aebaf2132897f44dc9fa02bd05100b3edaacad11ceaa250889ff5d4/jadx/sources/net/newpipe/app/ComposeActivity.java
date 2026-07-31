package net.newpipe.app;

import androidx.activity.ComponentActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposeActivity extends ComponentActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a5, code lost:
    
        r2.run();
        r10 = getWindow();
        r10.getClass();
        r3.adjustLayoutInDisplayCutoutMode(r10);
        super.onCreate(r11);
        r11 = new androidx.compose.runtime.internal.ComposableLambdaImpl(695299612, true, new net.newpipe.app.ComposeActivity$$ExternalSyntheticLambda0(r10, r9));
        r10 = androidx.activity.compose.ComponentActivityKt.DefaultActivityContentLayoutParams;
        r10 = ((android.view.ViewGroup) getWindow().getDecorView().findViewById(android.R.id.content)).getChildAt(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00dc, code lost:
    
        if ((r10 instanceof androidx.compose.ui.platform.ComposeView) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00de, code lost:
    
        r10 = (androidx.compose.ui.platform.ComposeView) r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e2, code lost:
    
        if (r10 == null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e4, code lost:
    
        r10.setParentCompositionContext(null);
        r10.setContent(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ea, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00eb, code lost:
    
        r10 = new androidx.compose.ui.platform.ComposeView(r10);
        r10.setParentCompositionContext(null);
        r10.setContent(r11);
        r11 = getWindow().getDecorView();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0102, code lost:
    
        if (androidx.lifecycle.ViewModelKt.get(r11) != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0104, code lost:
    
        r11.setTag(org.schabi.newpipe.R.id.view_tree_lifecycle_owner, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x010e, code lost:
    
        if (androidx.lifecycle.ViewModelKt.m464get(r11) != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0110, code lost:
    
        r11.setTag(org.schabi.newpipe.R.id.view_tree_view_model_store_owner, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x011a, code lost:
    
        if (org.jsoup.Jsoup.get(r11) != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x011c, code lost:
    
        r11.setTag(org.schabi.newpipe.R.id.view_tree_saved_state_registry_owner, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0122, code lost:
    
        setContentView(r10, androidx.activity.compose.ComponentActivityKt.DefaultActivityContentLayoutParams);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0127, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e1, code lost:
    
        r10 = null;
     */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r11) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.newpipe.app.ComposeActivity.onCreate(android.os.Bundle):void");
    }
}
