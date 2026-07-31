package androidx.compose.foundation.text.contextmenu.internal;

import android.R;
import android.os.Build;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.MutatorMutex$mutate$2;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.datastore.core.FileReadScope$readData$2;
import androidx.work.impl.Processor$$ExternalSyntheticLambda1;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidTextContextMenuToolbarProvider implements TextContextMenuProvider {
    public ActionMode actionMode;
    public final Function1 callbackInjector;
    public final Function0 coordinatesProvider;
    public Runnable finishActionModeRunnable;
    public Processor$$ExternalSyntheticLambda1 startActionModeRunnable;
    public final View view;
    public final MutatorMutex mutatorMutex = new MutatorMutex();
    public final SnapshotStateObserver snapshotStateObserver = new SnapshotStateObserver(new AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda0(this, 0));
    public final AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda0 onDataChange = new AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda0(this, 1);
    public final AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda0 onPositionChange = new AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda0(this, 2);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TextActionModeCallbackImpl {
        public final AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3 dataBuilder;
        public final AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3 positioner;
        public final TextContextMenuSessionImpl session;
        public final View view;

        public TextActionModeCallbackImpl(TextContextMenuSessionImpl textContextMenuSessionImpl, AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3 androidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3, AndroidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3 androidTextContextMenuToolbarProvider$$ExternalSyntheticLambda32, View view) {
            this.session = textContextMenuSessionImpl;
            this.dataBuilder = androidTextContextMenuToolbarProvider$$ExternalSyntheticLambda3;
            this.positioner = androidTextContextMenuToolbarProvider$$ExternalSyntheticLambda32;
            this.view = view;
        }

        public final boolean updateMenuItems(Menu menu) {
            int i;
            TextContextMenuData textContextMenuData = (TextContextMenuData) this.dataBuilder.invoke();
            if (Intrinsics.areEqual(textContextMenuData, null)) {
                return false;
            }
            menu.clear();
            List list = textContextMenuData.components;
            int size = list.size();
            int i2 = 1;
            int i3 = 1;
            for (int i4 = 0; i4 < size; i4++) {
                TextContextMenuComponent textContextMenuComponent = (TextContextMenuComponent) list.get(i4);
                if (textContextMenuComponent instanceof TextContextMenuItem) {
                    i = i2 + 1;
                    Object obj = textContextMenuComponent.key;
                    TextContextMenuItem textContextMenuItem = (TextContextMenuItem) textContextMenuComponent;
                    MenuItem add = menu.add(i3, Intrinsics.areEqual(obj, TextContextMenuKeys.CutKey) ? R.id.cut : Intrinsics.areEqual(obj, TextContextMenuKeys.CopyKey) ? R.id.copy : Intrinsics.areEqual(obj, TextContextMenuKeys.PasteKey) ? R.id.paste : Intrinsics.areEqual(obj, TextContextMenuKeys.SelectAllKey) ? R.id.selectAll : Intrinsics.areEqual(obj, TextContextMenuKeys.AutofillKey) ? R.id.autofill : i2, i2, textContextMenuItem.label);
                    add.setShowAsAction(2);
                    add.setOnMenuItemClickListener(new TextToolbarHelperApi28$$ExternalSyntheticLambda0(1, textContextMenuItem, this));
                } else {
                    if (textContextMenuComponent instanceof TextContextMenuTextClassificationItem) {
                        if (Build.VERSION.SDK_INT >= 28) {
                            i = i2 + 1;
                            TextContextMenuTextClassificationItem textContextMenuTextClassificationItem = (TextContextMenuTextClassificationItem) textContextMenuComponent;
                            TextToolbarHelperApi28.addMenuItem(menu, i2, this.view.getContext(), textContextMenuTextClassificationItem.textClassification, textContextMenuTextClassificationItem.index);
                        }
                    } else if (textContextMenuComponent instanceof TextContextMenuSeparator) {
                        i3++;
                    }
                }
                i2 = i;
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TextContextMenuSessionImpl implements TextContextMenuSession {
        public final BufferedChannel channel = Cookie.Companion.Channel$default(0, null, null, 7);

        @Override // androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession
        public final void close() {
            this.channel.mo1016trySendJP2dKIU(Unit.INSTANCE);
        }
    }

    public AndroidTextContextMenuToolbarProvider(View view, Function1 function1, Function0 function0) {
        this.view = view;
        this.callbackInjector = function1;
        this.coordinatesProvider = function0;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
    public final Object showTextContextMenu(TextContextMenuDataProvider textContextMenuDataProvider, SuspendLambda suspendLambda) {
        Continuation continuation = null;
        FileReadScope$readData$2 fileReadScope$readData$2 = new FileReadScope$readData$2(this, textContextMenuDataProvider, continuation, 3);
        MutatorMutex mutatorMutex = this.mutatorMutex;
        mutatorMutex.getClass();
        Object coroutineScope = JobKt.coroutineScope(new MutatorMutex$mutate$2(MutatePriority.Default, mutatorMutex, fileReadScope$readData$2, continuation, 0), suspendLambda);
        return coroutineScope == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope : Unit.INSTANCE;
    }
}
