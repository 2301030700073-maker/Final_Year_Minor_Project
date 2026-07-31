package net.thunderbird.feature.navigation.drawer.dropdown;

import android.view.View;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.core.view.ViewCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.fsck.k9.K9$special$$inlined$inject$default$1;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.activity.MessageHomeActivity$$ExternalSyntheticLambda5;
import com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.WeakHashMap;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DropDownDrawer implements KoinComponent {
    public final DrawerLayout drawer;
    public final ComposeView drawerContent;
    public final StateFlowImpl drawerState;
    public final AbstractMap$$ExternalSyntheticLambda0 openAccount;
    public final MessageHomeActivity$$ExternalSyntheticLambda5 openAddAccount;
    public final ComposerKt$$ExternalSyntheticLambda0 openFolder;
    public final MessageHomeActivity$$ExternalSyntheticLambda5 openManageFolders;
    public final MessageHomeActivity$$ExternalSyntheticLambda5 openSettings;
    public final MessageHomeActivity$$ExternalSyntheticLambda5 openUnifiedFolder;
    public final Lazy themeProvider$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new K9$special$$inlined$inject$default$1(this, 21));

    public DropDownDrawer(MessageHomeActivity messageHomeActivity, AbstractMap$$ExternalSyntheticLambda0 abstractMap$$ExternalSyntheticLambda0, ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0, MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda5, MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda52, MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda53, MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda54, MessageHomeActivity$$ExternalSyntheticLambda5 messageHomeActivity$$ExternalSyntheticLambda55) {
        this.openAccount = abstractMap$$ExternalSyntheticLambda0;
        this.openFolder = composerKt$$ExternalSyntheticLambda0;
        this.openUnifiedFolder = messageHomeActivity$$ExternalSyntheticLambda5;
        this.openManageFolders = messageHomeActivity$$ExternalSyntheticLambda52;
        this.openSettings = messageHomeActivity$$ExternalSyntheticLambda53;
        this.openAddAccount = messageHomeActivity$$ExternalSyntheticLambda54;
        View findViewById = messageHomeActivity.findViewById(R.id.navigation_drawer_layout);
        findViewById.getClass();
        DrawerLayout drawerLayout = (DrawerLayout) findViewById;
        this.drawer = drawerLayout;
        View findViewById2 = messageHomeActivity.findViewById(R.id.navigation_drawer_content);
        findViewById2.getClass();
        ComposeView composeView = (ComposeView) findViewById2;
        this.drawerContent = composeView;
        this.drawerState = FlowKt.MutableStateFlow(new FolderDrawerState(null, null));
        DrawerLayout.DrawerListener drawerListener = (DrawerLayout.DrawerListener) messageHomeActivity$$ExternalSyntheticLambda55.invoke();
        if (drawerLayout.mListeners == null) {
            drawerLayout.mListeners = new ArrayList();
        }
        drawerLayout.mListeners.add(drawerListener);
        MaterialButton$$ExternalSyntheticLambda0 materialButton$$ExternalSyntheticLambda0 = new MaterialButton$$ExternalSyntheticLambda0(7, this);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(drawerLayout, materialButton$$ExternalSyntheticLambda0);
        composeView.setContent(new ComposableLambdaImpl(-2107539832, new DropDownDrawer$$ExternalSyntheticLambda1(this, 0), true));
    }

    public final void close() {
        DrawerLayout drawerLayout = this.drawer;
        View findDrawerWithGravity = drawerLayout.findDrawerWithGravity(8388611);
        if (findDrawerWithGravity != null) {
            drawerLayout.closeDrawer(findDrawerWithGravity);
        } else {
            DBUtil$$ExternalSyntheticBUOutline0.m$1(DrawerLayout.gravityToString(8388611), "No drawer view found with gravity ");
        }
    }

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }
}
