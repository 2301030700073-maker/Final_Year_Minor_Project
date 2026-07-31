package com.skydoves.landscapist.coil3;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.unit.IntSize;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.Image;
import coil3.ImageLoader;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.decode.DataSource;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import coil3.size.Size;
import coil3.size.SizeKt;
import coil3.size.SizeResolverKt;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.sasl.OAuthBearer;
import com.skydoves.landscapist.ImageLoadState;
import com.skydoves.landscapist.ImageOptions;
import com.skydoves.landscapist.StableHolder;
import com.skydoves.landscapist.coil3.CoilImageState;
import com.skydoves.landscapist.components.ImageComponent;
import com.skydoves.landscapist.components.ImagePluginComponent;
import com.skydoves.landscapist.crossfade.CrossfadeWithEffectKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CoilImageKt {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DataSource.values().length];
            try {
                iArr[DataSource.NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DataSource.MEMORY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DataSource.MEMORY_CACHE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DataSource.DISK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CoilImage(final kotlin.jvm.functions.Function0 r31, androidx.compose.ui.Modifier r32, kotlin.jvm.functions.Function2 r33, com.skydoves.landscapist.components.ImageComponent r34, com.skydoves.landscapist.ImageOptions r35, kotlin.jvm.functions.Function1 r36, androidx.compose.ui.graphics.painter.Painter r37, kotlin.jvm.functions.Function4 r38, kotlin.jvm.functions.Function5 r39, kotlin.jvm.functions.Function4 r40, androidx.compose.runtime.Composer r41, final int r42, final int r43) {
        /*
            Method dump skipped, instructions count: 757
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.coil3.CoilImageKt.CoilImage(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, com.skydoves.landscapist.components.ImageComponent, com.skydoves.landscapist.ImageOptions, kotlin.jvm.functions.Function1, androidx.compose.ui.graphics.painter.Painter, kotlin.jvm.functions.Function4, kotlin.jvm.functions.Function5, kotlin.jvm.functions.Function4, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageLoader CoilImage$lambda$0(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(1609387366);
        ImageLoader coilImageLoader = LocalCoilProvider.INSTANCE.getCoilImageLoader(gapComposer, 6);
        gapComposer.end(false);
        return coilImageLoader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilImage$lambda$1$0(CoilImageState coilImageState) {
        coilImageState.getClass();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilImage$lambda$11(StableHolder stableHolder, Modifier modifier, ImageOptions imageOptions, StableHolder stableHolder2, Function4 function4, int i, int i2, Composer composer, int i3) {
        CoilImage(stableHolder, modifier, imageOptions, stableHolder2, function4, composer, Updater.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilImage$lambda$3(Function0 function0, Modifier modifier, Function2 function2, ImageComponent imageComponent, Function0 function02, ImageOptions imageOptions, Function1 function1, Painter painter, Function4 function4, Function5 function5, Function4 function42, int i, int i2, int i3, Composer composer, int i4) {
        CoilImage(function0, modifier, function2, imageComponent, function02, imageOptions, function1, painter, function4, function5, function42, composer, Updater.updateChangedFlags(i | 1), Updater.updateChangedFlags(i2), i3);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageLoader CoilImage$lambda$4(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(2062793202);
        ImageLoader coilImageLoader = LocalCoilProvider.INSTANCE.getCoilImageLoader(gapComposer, 6);
        gapComposer.end(false);
        return coilImageLoader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilImage$lambda$5$0(CoilImageState coilImageState) {
        coilImageState.getClass();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilImage$lambda$6$0(Function0 function0, Modifier modifier, Function2 function2, ImageComponent imageComponent, ImageOptions imageOptions, Function1 function1, Painter painter, Function4 function4, Function5 function5, Function4 function42, int i, int i2, Composer composer, int i3) {
        CoilImage(function0, modifier, function2, imageComponent, imageOptions, function1, painter, function4, function5, function42, composer, Updater.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilImage$lambda$7(final ImageComponent imageComponent, Function1 function1, final ImageOptions imageOptions, final Function4 function4, final Function4 function42, final Function2 function2, final Function0 function0, final Function5 function5, BoxWithConstraintsScope boxWithConstraintsScope, ImageLoadState imageLoadState, Composer composer, int i) {
        final BoxWithConstraintsScope boxWithConstraintsScope2;
        int i2;
        ImageLoadState imageLoadState2;
        boxWithConstraintsScope.getClass();
        imageLoadState.getClass();
        if ((i & 6) == 0) {
            boxWithConstraintsScope2 = boxWithConstraintsScope;
            i2 = i | (((GapComposer) composer).changed(boxWithConstraintsScope2) ? 4 : 2);
        } else {
            boxWithConstraintsScope2 = boxWithConstraintsScope;
            i2 = i;
        }
        if ((i & 48) == 0) {
            imageLoadState2 = imageLoadState;
            i2 |= ((GapComposer) composer).changed(imageLoadState2) ? 32 : 16;
        } else {
            imageLoadState2 = imageLoadState;
        }
        GapComposer gapComposer = (GapComposer) composer;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            boolean z = (i2 & 112) == 32;
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                rememberedValue = CoilImageStateKt.toCoilImageState(imageLoadState2);
                function1.invoke(rememberedValue);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final CoilImageState coilImageState = (CoilImageState) rememberedValue;
            Iterable iterable = imageComponent instanceof ImagePluginComponent ? ((ImagePluginComponent) imageComponent).mutablePlugins : EmptyList.INSTANCE;
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                it.next();
            }
            if (CollectionsKt.firstOrNull((List) arrayList) != null) {
                DBUtil$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            boolean changed = gapComposer.changed(coilImageState);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new AbstractMap$$ExternalSyntheticLambda0(23, coilImageState);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            CrossfadeWithEffectKt.CrossfadeWithEffect(coilImageState, null, 0, false, (Function1) rememberedValue2, Expect_jvmKt.rememberComposableLambda(1820985118, new Function3() { // from class: com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit CoilImage$lambda$7$2;
                    int intValue = ((Integer) obj3).intValue();
                    CoilImage$lambda$7$2 = CoilImageKt.CoilImage$lambda$7$2(CoilImageState.this, imageComponent, boxWithConstraintsScope2, imageOptions, function4, function42, function2, function0, function5, (CoilImageState) obj, (Composer) obj2, intValue);
                    return CoilImage$lambda$7$2;
                }
            }, gapComposer), gapComposer, 196608);
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object CoilImage$lambda$7$1$0(CoilImageState coilImageState, CoilImageState coilImageState2) {
        coilImageState2.getClass();
        return coilImageState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilImage$lambda$7$2(CoilImageState coilImageState, ImageComponent imageComponent, BoxWithConstraintsScope boxWithConstraintsScope, ImageOptions imageOptions, Function4 function4, Function4 function42, Function2 function2, Function0 function0, Function5 function5, CoilImageState coilImageState2, Composer composer, int i) {
        coilImageState2.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        boolean shouldExecute = gapComposer.shouldExecute(i & 1, (i & 17) != 16);
        Unit unit = Unit.INSTANCE;
        if (!shouldExecute) {
            gapComposer.skipToGroupEnd();
            return unit;
        }
        if ((coilImageState instanceof CoilImageState.None) || (coilImageState instanceof CoilImageState.Loading)) {
            gapComposer.startReplaceGroup(-764140010);
            ActionBar.ComposeLoadingStatePlugins(imageComponent, Utf8.SafeProcessor.constraint(boxWithConstraintsScope), imageOptions, Expect_jvmKt.rememberComposableLambda(-1200022344, new ArchiveOperations$$ExternalSyntheticLambda2(function0, function2, imageOptions, 8), gapComposer), gapComposer, 3072);
            if (function4 == null) {
                gapComposer.startReplaceGroup(-763679041);
            } else {
                gapComposer.startReplaceGroup(1915027842);
                function4.invoke(boxWithConstraintsScope, CoilImageState.Loading.INSTANCE, gapComposer, 48);
            }
            gapComposer.end(false);
            gapComposer.end(false);
            return unit;
        }
        if (coilImageState instanceof CoilImageState.Failure) {
            gapComposer.startReplaceGroup(-763587962);
            ActionBar.ComposeFailureStatePlugins(imageComponent, Utf8.SafeProcessor.constraint(boxWithConstraintsScope), imageOptions, ((CoilImageState.Failure) coilImageState).getReason(), gapComposer, 0);
            if (function42 == null) {
                gapComposer.startReplaceGroup(-763380697);
            } else {
                gapComposer.startReplaceGroup(1915037466);
                function42.invoke(boxWithConstraintsScope, coilImageState, gapComposer, 0);
            }
            gapComposer.end(false);
            gapComposer.end(false);
            return unit;
        }
        if (!(coilImageState instanceof CoilImageState.Success)) {
            throw ViewSizeResolver.CC.m(gapComposer, 1915011396, false);
        }
        gapComposer.startReplaceGroup(-763266554);
        ImageLoader imageLoader = (ImageLoader) function2.invoke(gapComposer, 0);
        Object data = ((ImageRequest) function0.invoke()).getData();
        CoilImageState.Success success = (CoilImageState.Success) coilImageState;
        ActionBar.ComposeSuccessStatePlugins(imageComponent, Utf8.SafeProcessor.constraint(boxWithConstraintsScope), data, imageOptions, success.getImageBitmap(gapComposer, 0), gapComposer, 0);
        Image image = success.getImage();
        if (image == null) {
            gapComposer.end(false);
            return unit;
        }
        ProvideCoilSourceFile_androidKt.ProvideCoilSourceFile(imageLoader, data, success.getDataSource(), Expect_jvmKt.rememberComposableLambda(-800244571, new CoilImageKt$$ExternalSyntheticLambda14(imageComponent, function5, boxWithConstraintsScope, success, PlatformsKt.rememberImagePainter(image, imageComponent instanceof ImagePluginComponent ? ((ImagePluginComponent) imageComponent).mutablePlugins : EmptyList.INSTANCE, gapComposer, 0), imageOptions, 0), gapComposer), gapComposer, 3072);
        gapComposer.end(false);
        return unit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilImage$lambda$7$2$0(Function0 function0, Function2 function2, ImageOptions imageOptions, IntSize intSize, Composer composer, int i) {
        int i2;
        if ((i & 6) == 0) {
            i2 = i | (((GapComposer) composer).changed(intSize.packedValue) ? 4 : 2);
        } else {
            i2 = i;
        }
        GapComposer gapComposer = (GapComposer) composer;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            m962CoilThumbnail4goxYXU(intSize.packedValue, new StableHolder(function0.invoke()), imageOptions, new StableHolder(function2.invoke(gapComposer, 0)), gapComposer, i2 & 14, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilImage$lambda$7$2$1(ImageComponent imageComponent, Function5 function5, BoxWithConstraintsScope boxWithConstraintsScope, CoilImageState coilImageState, Painter painter, ImageOptions imageOptions, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        if (gapComposer.shouldExecute(i & 1, (i & 3) != 2)) {
            ActionBar.ComposeWithComposablePlugins(imageComponent, Expect_jvmKt.rememberComposableLambda(-1403867283, new CoilImageKt$$ExternalSyntheticLambda15(function5, boxWithConstraintsScope, coilImageState, painter, imageOptions, 0), gapComposer), gapComposer, 48);
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilImage$lambda$7$2$1$0(Function5 function5, BoxWithConstraintsScope boxWithConstraintsScope, CoilImageState coilImageState, Painter painter, ImageOptions imageOptions, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        if (!gapComposer.shouldExecute(i & 1, (i & 3) != 2)) {
            gapComposer.skipToGroupEnd();
        } else if (function5 != null) {
            gapComposer.startReplaceGroup(1781339874);
            function5.invoke(boxWithConstraintsScope, coilImageState, painter, gapComposer, 512);
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(1781433246);
            OAuthBearer.LandscapistImage(imageOptions, TestTagKt.testTag(Utf8.SafeProcessor.constraint(boxWithConstraintsScope), imageOptions.getTag()), painter, gapComposer, 512);
            gapComposer.end(false);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilImage$lambda$8(Function0 function0, Modifier modifier, Function2 function2, ImageComponent imageComponent, ImageOptions imageOptions, Function1 function1, Painter painter, Function4 function4, Function5 function5, Function4 function42, int i, int i2, Composer composer, int i3) {
        CoilImage(function0, modifier, function2, imageComponent, imageOptions, function1, painter, function4, function5, function42, composer, Updater.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0084, code lost:
    
        if ((r25 & 8) != 0) goto L48;
     */
    /* renamed from: CoilThumbnail-4goxYXU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void m962CoilThumbnail4goxYXU(long r18, com.skydoves.landscapist.StableHolder r20, com.skydoves.landscapist.ImageOptions r21, com.skydoves.landscapist.StableHolder r22, androidx.compose.runtime.Composer r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.coil3.CoilImageKt.m962CoilThumbnail4goxYXU(long, com.skydoves.landscapist.StableHolder, com.skydoves.landscapist.ImageOptions, com.skydoves.landscapist.StableHolder, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilThumbnail_4goxYXU$lambda$0(ImageOptions imageOptions, BoxWithConstraintsScope boxWithConstraintsScope, ImageLoadState imageLoadState, Composer composer, int i) {
        boxWithConstraintsScope.getClass();
        imageLoadState.getClass();
        if ((i & 48) == 0) {
            i |= ((GapComposer) composer).changed(imageLoadState) ? 32 : 16;
        }
        GapComposer gapComposer = (GapComposer) composer;
        boolean shouldExecute = gapComposer.shouldExecute(i & 1, (i & 145) != 144);
        Unit unit = Unit.INSTANCE;
        if (!shouldExecute) {
            gapComposer.skipToGroupEnd();
            return unit;
        }
        CoilImageState coilImageState = CoilImageStateKt.toCoilImageState(imageLoadState);
        if (!(coilImageState instanceof CoilImageState.Success)) {
            gapComposer.startReplaceGroup(450849585);
            gapComposer.end(false);
            return unit;
        }
        gapComposer.startReplaceGroup(450605491);
        Image image = ((CoilImageState.Success) coilImageState).getImage();
        if (image == null) {
            gapComposer.end(false);
            return unit;
        }
        OAuthBearer.LandscapistImage(imageOptions, Modifier.Companion.$$INSTANCE, PlatformsKt.rememberImagePainter(image, EmptyList.INSTANCE, gapComposer, 48), gapComposer, 560);
        gapComposer.end(false);
        return unit;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit CoilThumbnail_4goxYXU$lambda$1(long j, StableHolder stableHolder, ImageOptions imageOptions, StableHolder stableHolder2, int i, int i2, Composer composer, int i3) {
        m962CoilThumbnail4goxYXU(j, stableHolder, imageOptions, stableHolder2, composer, Updater.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    public static final ImageRequest rememberRequestWithConstraints(ImageRequest imageRequest, ImageOptions imageOptions, Composer composer, int i) {
        imageRequest.getClass();
        imageOptions.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        boolean changed = ((((i & 112) ^ 48) > 32 && gapComposer.changed(imageOptions)) || (i & 48) == 32) | gapComposer.changed(imageRequest);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            if (imageRequest.getDefined().getSizeResolver() == null) {
                imageRequest = ImageRequest.newBuilder$default(imageRequest, null, 1, null).size((((int) (imageOptions.m954getRequestSizeYbymL2g() >> 32)) <= 0 || ((int) (imageOptions.m954getRequestSizeYbymL2g() & 4294967295L)) <= 0) ? Intrinsics.areEqual(imageOptions.getContentScale(), ContentScale.Companion.None) ? SizeResolverKt.SizeResolver(Size.ORIGINAL) : new ConstraintsSizeResolver() : SizeResolverKt.SizeResolver(SizeKt.Size((int) (imageOptions.m954getRequestSizeYbymL2g() >> 32), (int) (imageOptions.m954getRequestSizeYbymL2g() & 4294967295L)))).build();
            }
            gapComposer.updateRememberedValue(imageRequest);
            rememberedValue = imageRequest;
        }
        return (ImageRequest) rememberedValue;
    }

    private static final com.skydoves.landscapist.DataSource toDataSource(DataSource dataSource) {
        int i = WhenMappings.$EnumSwitchMapping$0[dataSource.ordinal()];
        if (i == 1) {
            return com.skydoves.landscapist.DataSource.NETWORK;
        }
        if (i == 2) {
            return com.skydoves.landscapist.DataSource.MEMORY;
        }
        if (i == 3) {
            return com.skydoves.landscapist.DataSource.MEMORY;
        }
        if (i == 4) {
            return com.skydoves.landscapist.DataSource.DISK;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageLoadState toResult(ImageResult imageResult) {
        if (imageResult instanceof SuccessResult) {
            SuccessResult successResult = (SuccessResult) imageResult;
            return new ImageLoadState.Success(successResult.getImage(), toDataSource(successResult.getDataSource()));
        }
        if (imageResult instanceof ErrorResult) {
            ErrorResult errorResult = (ErrorResult) imageResult;
            return new ImageLoadState.Failure(errorResult.getImage(), errorResult.getThrowable());
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImageRequest CoilImage$lambda$2$0(ImageRequest imageRequest) {
        return imageRequest;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CoilImage(final kotlin.jvm.functions.Function0 r35, androidx.compose.ui.Modifier r36, kotlin.jvm.functions.Function2 r37, com.skydoves.landscapist.components.ImageComponent r38, kotlin.jvm.functions.Function0 r39, com.skydoves.landscapist.ImageOptions r40, kotlin.jvm.functions.Function1 r41, androidx.compose.ui.graphics.painter.Painter r42, kotlin.jvm.functions.Function4 r43, kotlin.jvm.functions.Function5 r44, kotlin.jvm.functions.Function4 r45, androidx.compose.runtime.Composer r46, final int r47, final int r48, final int r49) {
        /*
            Method dump skipped, instructions count: 732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.coil3.CoilImageKt.CoilImage(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, com.skydoves.landscapist.components.ImageComponent, kotlin.jvm.functions.Function0, com.skydoves.landscapist.ImageOptions, kotlin.jvm.functions.Function1, androidx.compose.ui.graphics.painter.Painter, kotlin.jvm.functions.Function4, kotlin.jvm.functions.Function5, kotlin.jvm.functions.Function4, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void CoilImage(com.skydoves.landscapist.StableHolder r18, androidx.compose.ui.Modifier r19, com.skydoves.landscapist.ImageOptions r20, com.skydoves.landscapist.StableHolder r21, kotlin.jvm.functions.Function4 r22, androidx.compose.runtime.Composer r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.landscapist.coil3.CoilImageKt.CoilImage(com.skydoves.landscapist.StableHolder, androidx.compose.ui.Modifier, com.skydoves.landscapist.ImageOptions, com.skydoves.landscapist.StableHolder, kotlin.jvm.functions.Function4, androidx.compose.runtime.Composer, int, int):void");
    }
}
