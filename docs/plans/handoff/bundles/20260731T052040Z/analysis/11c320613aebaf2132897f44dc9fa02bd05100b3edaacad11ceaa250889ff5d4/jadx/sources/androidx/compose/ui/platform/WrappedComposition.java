package androidx.compose.ui.platform;

import android.os.Looper;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WrappedComposition implements Composition, LifecycleEventObserver {
    public Lifecycle addedToLifecycle;
    public boolean disposed;
    public Function2 lastContent = ComposableSingletons$Wrapper_androidKt.f6lambda$1759434350;
    public final CompositionImpl original;
    public final AndroidComposeView owner;

    public WrappedComposition(AndroidComposeView androidComposeView, CompositionImpl compositionImpl) {
        this.owner = androidComposeView;
        this.original = compositionImpl;
    }

    public final void dispose() {
        if (!this.disposed) {
            this.disposed = true;
            this.owner.getView().setTag(R.id.wrapped_composition_tag, null);
            Lifecycle lifecycle = this.addedToLifecycle;
            if (lifecycle != null) {
                lifecycle.removeObserver(this);
            }
            this.addedToLifecycle = null;
        }
        this.original.dispose();
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            dispose();
        } else {
            if (event != Lifecycle.Event.ON_CREATE || this.disposed) {
                return;
            }
            setContent(this.lastContent);
        }
    }

    public final void setContent(final Function2 function2) {
        this.owner.setOnReadyForComposition(new Function1() { // from class: androidx.compose.ui.platform.WrappedComposition$setContent$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                final ComposeViewContext composeViewContext = (ComposeViewContext) obj;
                if (!WrappedComposition.this.disposed) {
                    LifecycleOwner lifecycleOwner = composeViewContext.lifecycleOwner;
                    View view = composeViewContext.view;
                    Lifecycle lifecycle = lifecycleOwner.getLifecycle();
                    WrappedComposition wrappedComposition = WrappedComposition.this;
                    wrappedComposition.lastContent = function2;
                    if (wrappedComposition.addedToLifecycle == null) {
                        boolean areEqual = Intrinsics.areEqual(Looper.myLooper(), view.getHandler().getLooper());
                        WrappedComposition wrappedComposition2 = WrappedComposition.this;
                        if (areEqual) {
                            wrappedComposition2.addedToLifecycle = lifecycle;
                            lifecycle.addObserver(wrappedComposition2);
                        } else {
                            view.post(new Processor$$ExternalSyntheticLambda2(wrappedComposition2, lifecycle, 4));
                        }
                    } else if (((LifecycleRegistry) lifecycle).state.compareTo(Lifecycle.State.CREATED) >= 0) {
                        final WrappedComposition wrappedComposition3 = WrappedComposition.this;
                        CompositionImpl compositionImpl = wrappedComposition3.original;
                        final Function2 function22 = function2;
                        compositionImpl.setContent(new ComposableLambdaImpl(-1723985096, true, new Function2() { // from class: androidx.compose.ui.platform.WrappedComposition$setContent$1.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj2, Object obj3) {
                                Composer composer = (Composer) obj2;
                                int intValue = ((Number) obj3).intValue();
                                GapComposer gapComposer = (GapComposer) composer;
                                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                    WrappedComposition wrappedComposition4 = WrappedComposition.this;
                                    AndroidComposeView androidComposeView = wrappedComposition4.owner;
                                    boolean changedInstance = gapComposer.changedInstance(wrappedComposition4);
                                    WrappedComposition wrappedComposition5 = WrappedComposition.this;
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new WrappedComposition$setContent$1$2$1$1(wrappedComposition5, null);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    Updater.LaunchedEffect(gapComposer, androidComposeView, (Function2) rememberedValue);
                                    WrappedComposition wrappedComposition6 = WrappedComposition.this;
                                    AndroidComposeView androidComposeView2 = wrappedComposition6.owner;
                                    boolean changedInstance2 = gapComposer.changedInstance(wrappedComposition6);
                                    WrappedComposition wrappedComposition7 = WrappedComposition.this;
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new WrappedComposition$setContent$1$2$2$1(wrappedComposition7, null);
                                        gapComposer.updateRememberedValue(rememberedValue2);
                                    }
                                    Updater.LaunchedEffect(gapComposer, androidComposeView2, (Function2) rememberedValue2);
                                    composeViewContext.ProvideCompositionLocals$ui(WrappedComposition.this.owner, function22, gapComposer, 0);
                                } else {
                                    gapComposer.skipToGroupEnd();
                                }
                                return Unit.INSTANCE;
                            }
                        }));
                    }
                }
                return Unit.INSTANCE;
            }
        });
    }
}
