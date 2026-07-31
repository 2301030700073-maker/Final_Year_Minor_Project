package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.unit.DpKt;
import androidx.paging.PagingDataPresenter$collectFrom$2;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferedChannel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BasicTextContextMenuProvider implements TextContextMenuProvider {
    public final ComposableLambdaImpl contextMenuBlock;
    public final MutatorMutex mutatorMutex = new MutatorMutex();
    public final ParcelableSnapshotMutableState session$delegate = Updater.mutableStateOf$default(null);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SessionImpl implements TextContextMenuSession {
        public final BufferedChannel channel = DpKt.Channel$default(0, 7, null);
        public final TextContextMenuDataProvider dataProvider;

        public SessionImpl(TextContextMenuDataProvider textContextMenuDataProvider) {
            this.dataProvider = textContextMenuDataProvider;
        }

        @Override // androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession
        public final void close() {
            this.channel.mo757trySendJP2dKIU(Unit.INSTANCE);
        }
    }

    public BasicTextContextMenuProvider(ComposableLambdaImpl composableLambdaImpl) {
        this.contextMenuBlock = composableLambdaImpl;
    }

    public final void ContextMenu(final Function0 function0, GapComposer gapComposer, final int i) {
        final Function0 function02;
        GapComposer gapComposer2;
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
                            GapComposer gapComposer3 = (GapComposer) obj;
                            ((Integer) obj2).getClass();
                            switch (i5) {
                                case 0:
                                    basicTextContextMenuProvider.ContextMenu(function03, gapComposer3, Updater.updateChangedFlags(7));
                                    break;
                                default:
                                    basicTextContextMenuProvider.ContextMenu(function03, gapComposer3, Updater.updateChangedFlags(7));
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
            gapComposer2 = gapComposer;
            this.contextMenuBlock.invoke((Object) sessionImpl, (Object) sessionImpl.dataProvider, (Object) function02, (Object) gapComposer2, (Object) 384);
        } else {
            function02 = function0;
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup2 = gapComposer2.endRestartGroup();
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
                    GapComposer gapComposer3 = (GapComposer) obj;
                    ((Integer) obj2).getClass();
                    switch (i5) {
                        case 0:
                            basicTextContextMenuProvider.ContextMenu(function03, gapComposer3, Updater.updateChangedFlags(7));
                            break;
                        default:
                            basicTextContextMenuProvider.ContextMenu(function03, gapComposer3, Updater.updateChangedFlags(7));
                            break;
                    }
                    return unit;
                }
            };
        }
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider
    public final Object showTextContextMenu(TextContextMenuDataProvider textContextMenuDataProvider, SuspendLambda suspendLambda) {
        Object mutate$default = MutatorMutex.mutate$default(this.mutatorMutex, new PagingDataPresenter$collectFrom$2(this, new SessionImpl(textContextMenuDataProvider), null, 2), suspendLambda);
        return mutate$default == CoroutineSingletons.COROUTINE_SUSPENDED ? mutate$default : Unit.INSTANCE;
    }
}
