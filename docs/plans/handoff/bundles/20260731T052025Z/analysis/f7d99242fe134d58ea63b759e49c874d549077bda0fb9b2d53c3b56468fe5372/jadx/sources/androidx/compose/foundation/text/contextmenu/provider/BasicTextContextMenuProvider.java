package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.MutatorMutex$mutate$2;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.datastore.core.FileReadScope$readData$2;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BasicTextContextMenuProvider implements TextContextMenuProvider {
    public final ComposableLambdaImpl contextMenuBlock;
    public final MutatorMutex mutatorMutex = new MutatorMutex();
    public final ParcelableSnapshotMutableState session$delegate = Updater.mutableStateOf$default(null);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SessionImpl implements TextContextMenuSession {
        public final BufferedChannel channel = Cookie.Companion.Channel$default(0, null, null, 7);
        public final TextContextMenuDataProvider dataProvider;

        public SessionImpl(TextContextMenuDataProvider textContextMenuDataProvider) {
            this.dataProvider = textContextMenuDataProvider;
        }

        @Override // androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession
        public final void close() {
            this.channel.mo1016trySendJP2dKIU(Unit.INSTANCE);
        }
    }

    public BasicTextContextMenuProvider(ComposableLambdaImpl composableLambdaImpl) {
        this.contextMenuBlock = composableLambdaImpl;
    }

    public final void ContextMenu(final Function0 function0, Composer composer, final int i) {
        final Function0 function02;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(723898654);
        int i2 = (gapComposer.changed(this) ? 32 : 16) | i;
        final int i3 = 0;
        final int i4 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            SessionImpl sessionImpl = (SessionImpl) this.session$delegate.getValue();
            if (sessionImpl == null) {
                RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
                if (endRestartGroup != null) {
                    endRestartGroup.block = new Function2(this, function0, i, i3) { // from class: androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider$$ExternalSyntheticLambda0
                        public final /* synthetic */ int $r8$classId;
                        public final /* synthetic */ BasicTextContextMenuProvider f$0;
                        public final /* synthetic */ Function0 f$1;

                        {
                            this.$r8$classId = i3;
                            this.f$0 = this;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i5 = this.$r8$classId;
                            Unit unit = Unit.INSTANCE;
                            Function0 function03 = this.f$1;
                            BasicTextContextMenuProvider basicTextContextMenuProvider = this.f$0;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).getClass();
                            switch (i5) {
                                case 0:
                                    basicTextContextMenuProvider.ContextMenu(function03, composer2, Updater.updateChangedFlags(7));
                                    break;
                                default:
                                    basicTextContextMenuProvider.ContextMenu(function03, composer2, Updater.updateChangedFlags(7));
                                    break;
                            }
                            return unit;
                        }
                    };
                    return;
                }
                return;
            }
            function02 = function0;
            this.contextMenuBlock.invoke((Object) sessionImpl, (Object) sessionImpl.dataProvider, (Object) function02, (Object) gapComposer, (Object) 384);
        } else {
            function02 = function0;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup2 = gapComposer.endRestartGroup();
        if (endRestartGroup2 != null) {
            endRestartGroup2.block = new Function2(this, function02, i, i4) { // from class: androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider$$ExternalSyntheticLambda0
                public final /* synthetic */ int $r8$classId;
                public final /* synthetic */ BasicTextContextMenuProvider f$0;
                public final /* synthetic */ Function0 f$1;

                {
                    this.$r8$classId = i4;
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i5 = this.$r8$classId;
                    Unit unit = Unit.INSTANCE;
                    Function0 function03 = this.f$1;
                    BasicTextContextMenuProvider basicTextContextMenuProvider = this.f$0;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    switch (i5) {
                        case 0:
                            basicTextContextMenuProvider.ContextMenu(function03, composer2, Updater.updateChangedFlags(7));
                            break;
                        default:
                            basicTextContextMenuProvider.ContextMenu(function03, composer2, Updater.updateChangedFlags(7));
                            break;
                    }
                    return unit;
                }
            };
        }
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
    public final Object showTextContextMenu(TextContextMenuDataProvider textContextMenuDataProvider, SuspendLambda suspendLambda) {
        Continuation continuation = null;
        FileReadScope$readData$2 fileReadScope$readData$2 = new FileReadScope$readData$2(this, new SessionImpl(textContextMenuDataProvider), continuation, 4);
        MutatorMutex mutatorMutex = this.mutatorMutex;
        mutatorMutex.getClass();
        Object coroutineScope = JobKt.coroutineScope(new MutatorMutex$mutate$2(MutatePriority.Default, mutatorMutex, fileReadScope$readData$2, continuation, 0), suspendLambda);
        return coroutineScope == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope : Unit.INSTANCE;
    }
}
