package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;

/* compiled from: Focusable.kt */
/* loaded from: classes.dex */
final class FocusableInteractionNode extends Modifier.Node {
    private FocusInteraction$Focus focusedInteraction;
    private MutableInteractionSource interactionSource;
    private final boolean shouldAutoInvalidate;

    public FocusableInteractionNode(MutableInteractionSource mutableInteractionSource) {
        this.interactionSource = mutableInteractionSource;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return this.shouldAutoInvalidate;
    }

    public final void setFocus(boolean z) {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            if (z) {
                FocusInteraction$Focus focusInteraction$Focus = this.focusedInteraction;
                if (focusInteraction$Focus != null) {
                    emitWithFallback(mutableInteractionSource, new FocusInteraction$Unfocus(focusInteraction$Focus));
                    this.focusedInteraction = null;
                }
                FocusInteraction$Focus focusInteraction$Focus2 = new FocusInteraction$Focus();
                emitWithFallback(mutableInteractionSource, focusInteraction$Focus2);
                this.focusedInteraction = focusInteraction$Focus2;
                return;
            }
            FocusInteraction$Focus focusInteraction$Focus3 = this.focusedInteraction;
            if (focusInteraction$Focus3 != null) {
                emitWithFallback(mutableInteractionSource, new FocusInteraction$Unfocus(focusInteraction$Focus3));
                this.focusedInteraction = null;
            }
        }
    }

    public final void update(MutableInteractionSource mutableInteractionSource) {
        if (Intrinsics.areEqual(this.interactionSource, mutableInteractionSource)) {
            return;
        }
        disposeInteractionSource();
        this.interactionSource = mutableInteractionSource;
    }

    private final void disposeInteractionSource() {
        FocusInteraction$Focus focusInteraction$Focus;
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null && (focusInteraction$Focus = this.focusedInteraction) != null) {
            mutableInteractionSource.tryEmit(new FocusInteraction$Unfocus(focusInteraction$Focus));
        }
        this.focusedInteraction = null;
    }

    private final void emitWithFallback(final MutableInteractionSource mutableInteractionSource, final Interaction interaction) {
        if (isAttached()) {
            Job job = (Job) getCoroutineScope().getCoroutineContext().get(Job.Key);
            BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new FocusableInteractionNode$emitWithFallback$1(mutableInteractionSource, interaction, job != null ? job.invokeOnCompletion(new Function1() { // from class: androidx.compose.foundation.FocusableInteractionNode$emitWithFallback$handler$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Throwable) obj);
                    return Unit.INSTANCE;
                }

                public final void invoke(Throwable th) {
                    MutableInteractionSource.this.tryEmit(interaction);
                }
            }) : null, null), 3, null);
        } else {
            mutableInteractionSource.tryEmit(interaction);
        }
    }
}
