package com.airbnb.lottie.compose;

import android.content.Context;
import android.graphics.Typeface;
import androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.datastore.core.SimpleActor$offer$2;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.utils.Logger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RememberLottieCompositionKt$loadFontsFromAssets$2 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object $composition;
    public final /* synthetic */ Object $context;
    public final /* synthetic */ Object $fontAssetsFolder;
    public final /* synthetic */ Object $fontFileExtension;
    public final /* synthetic */ int $r8$classId = 1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberLottieCompositionKt$loadFontsFromAssets$2(LottieComposition lottieComposition, Context context, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.$composition = lottieComposition;
        this.$context = context;
        this.$fontAssetsFolder = str;
        this.$fontFileExtension = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$fontFileExtension;
        Object obj3 = this.$fontAssetsFolder;
        Object obj4 = this.$context;
        switch (i) {
            case 0:
                return new RememberLottieCompositionKt$loadFontsFromAssets$2((LottieComposition) this.$composition, (Context) obj4, (String) obj3, (String) obj2, continuation);
            default:
                RememberLottieCompositionKt$loadFontsFromAssets$2 rememberLottieCompositionKt$loadFontsFromAssets$2 = new RememberLottieCompositionKt$loadFontsFromAssets$2((PointerInputScope) obj4, (TextDragObserver) obj3, (TextFieldSelectionManager) obj2, continuation);
                rememberLottieCompositionKt$loadFontsFromAssets$2.$composition = obj;
                return rememberLottieCompositionKt$loadFontsFromAssets$2;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((RememberLottieCompositionKt$loadFontsFromAssets$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((RememberLottieCompositionKt$loadFontsFromAssets$2) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$fontFileExtension;
        int i2 = 0;
        Object obj3 = this.$fontAssetsFolder;
        Object obj4 = this.$context;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                for (Font font : ((LottieComposition) this.$composition).fonts.values()) {
                    Context context = (Context) obj4;
                    font.getClass();
                    String str = font.family;
                    String str2 = font.style;
                    try {
                        Typeface createFromAsset = Typeface.createFromAsset(context.getAssets(), ((String) obj3) + str + ((String) obj2));
                        try {
                            createFromAsset.getClass();
                            str2.getClass();
                            boolean contains = StringsKt.contains(str2, "Italic", false);
                            boolean contains2 = StringsKt.contains(str2, "Bold", false);
                            int i3 = (contains && contains2) ? 3 : contains ? 2 : contains2 ? 1 : 0;
                            if (createFromAsset.getStyle() != i3) {
                                createFromAsset = Typeface.create(createFromAsset, i3);
                            }
                            font.typeface = createFromAsset;
                        } catch (Exception unused) {
                            Logger.INSTANCE.getClass();
                            AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
                        }
                    } catch (Exception unused2) {
                        Logger.INSTANCE.getClass();
                        AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
                    }
                }
                break;
            default:
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.$composition;
                CoroutineStart coroutineStart = CoroutineStart.UNDISPATCHED;
                PointerInputScope pointerInputScope = (PointerInputScope) obj4;
                Continuation continuation = null;
                AwaitKt.launch$default(coroutineScope, null, coroutineStart, new CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1(pointerInputScope, (TextDragObserver) obj3, continuation, i2), 1);
                AwaitKt.launch$default(coroutineScope, null, coroutineStart, new SimpleActor$offer$2(pointerInputScope, (TextFieldSelectionManager) obj2, continuation, 12), 1);
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RememberLottieCompositionKt$loadFontsFromAssets$2(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, TextFieldSelectionManager textFieldSelectionManager, Continuation continuation) {
        super(2, continuation);
        this.$context = pointerInputScope;
        this.$fontAssetsFolder = textDragObserver;
        this.$fontFileExtension = textFieldSelectionManager;
    }
}
