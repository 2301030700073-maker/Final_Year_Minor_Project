package org.jetbrains.anko;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.Build;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedRange;
import org.jetbrains.anko.internals.AnkoInternals;

/* compiled from: Helpers.kt */
@Metadata(bv = {1, 0, 1}, d1 = {"\u0000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a#\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b\u0000\u0010\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\nH\u0086\b\u001a\u001f\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\f0\nH\u0086\b\u001a\u001f\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\f0\nH\u0086\b\u001a¶\u0001\u0010\u000f\u001a\u0004\u0018\u0001H\b\"\b\b\u0000\u0010\b*\u00020\u0010*\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\nH\u0086\b¢\u0006\u0002\u0010#\u001a¶\u0001\u0010\u000f\u001a\u0004\u0018\u0001H\b\"\b\b\u0000\u0010\b*\u00020\u0010*\u00020$2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\nH\u0086\b¢\u0006\u0002\u0010%\u001a¶\u0001\u0010\u000f\u001a\u0004\u0018\u0001H\b\"\b\b\u0000\u0010\b*\u00020\u0010*\u00020&2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\nH\u0086\b¢\u0006\u0002\u0010'\u001aº\u0001\u0010\u000f\u001a\u0004\u0018\u0001H\b\"\b\b\u0000\u0010\b*\u00020\u0010*\u0006\u0012\u0002\b\u00030(2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00012\f\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\b0\nH\u0086\b¢\u0006\u0002\u0010)\u001a\u0012\u0010*\u001a\u00020\u0001*\u00020\u00012\u0006\u0010+\u001a\u00020\u0001\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003\"\u0015\u0010\u0004\u001a\u00020\u0001*\u00020\u00018F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0003¨\u0006,"}, d2 = {"gray", "", "getGray", "(I)I", "opaque", "getOpaque", "attempt", "Lorg/jetbrains/anko/AttemptResult;", "T", "f", "Lkotlin/Function0;", "doFromSdk", "", "version", "doIfSdk", "configuration", "", "Landroid/app/Activity;", "screenSize", "Lorg/jetbrains/anko/ScreenSize;", "density", "Lkotlin/ranges/ClosedRange;", "language", "", "orientation", "Lorg/jetbrains/anko/Orientation;", "long", "", "fromSdk", "sdk", "uiMode", "Lorg/jetbrains/anko/UiMode;", "nightMode", "rightToLeft", "smallestWidth", "(Landroid/app/Activity;Lorg/jetbrains/anko/ScreenSize;Lkotlin/ranges/ClosedRange;Ljava/lang/String;Lorg/jetbrains/anko/Orientation;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/jetbrains/anko/UiMode;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Landroid/app/Fragment;", "(Landroid/app/Fragment;Lorg/jetbrains/anko/ScreenSize;Lkotlin/ranges/ClosedRange;Ljava/lang/String;Lorg/jetbrains/anko/Orientation;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/jetbrains/anko/UiMode;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Landroid/content/Context;", "(Landroid/content/Context;Lorg/jetbrains/anko/ScreenSize;Lkotlin/ranges/ClosedRange;Ljava/lang/String;Lorg/jetbrains/anko/Orientation;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/jetbrains/anko/UiMode;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Lorg/jetbrains/anko/AnkoContext;", "(Lorg/jetbrains/anko/AnkoContext;Lorg/jetbrains/anko/ScreenSize;Lkotlin/ranges/ClosedRange;Ljava/lang/String;Lorg/jetbrains/anko/Orientation;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/jetbrains/anko/UiMode;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "withAlpha", "alpha", "commons_release"}, k = 2, mv = {1, 1, 5})
/* loaded from: classes.dex */
public final class HelpersKt {
    public static final int getGray(int $receiver) {
        return ($receiver << 8) | $receiver | ($receiver << 16);
    }

    public static final int getOpaque(int $receiver) {
        return $receiver | ((int) 4278190080L);
    }

    public static final int withAlpha(int $receiver, int alpha) {
        if (!(alpha >= 0 && alpha <= 255)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        return (16777215 & $receiver) | (alpha << 24);
    }

    public static /* bridge */ /* synthetic */ Object configuration$default(Context receiver, ScreenSize screenSize, ClosedRange density, String language, Orientation orientation, Boolean bool, Integer fromSdk, Integer sdk, UiMode uiMode, Boolean nightMode, Boolean rightToLeft, Integer smallestWidth, Function0 f, int i, Object obj) {
        Integer smallestWidth2;
        ScreenSize screenSize2 = (i & 1) != 0 ? (ScreenSize) null : screenSize;
        ClosedRange density2 = (i & 2) != 0 ? (ClosedRange) null : density;
        String language2 = (i & 4) != 0 ? (String) null : language;
        Orientation orientation2 = (i & 8) != 0 ? (Orientation) null : orientation;
        Boolean bool2 = (i & 16) != 0 ? (Boolean) null : bool;
        Integer fromSdk2 = (i & 32) != 0 ? (Integer) null : fromSdk;
        Integer sdk2 = (i & 64) != 0 ? (Integer) null : sdk;
        UiMode uiMode2 = (i & 128) != 0 ? (UiMode) null : uiMode;
        Boolean nightMode2 = (i & 256) != 0 ? (Boolean) null : nightMode;
        Boolean rightToLeft2 = (i & 512) != 0 ? (Boolean) null : rightToLeft;
        if ((i & 1024) != 0) {
            Integer smallestWidth3 = (Integer) null;
            smallestWidth2 = smallestWidth3;
        } else {
            smallestWidth2 = smallestWidth;
        }
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(f, "f");
        if (AnkoInternals.testConfiguration(receiver, screenSize2, density2, language2, orientation2, bool2, fromSdk2, sdk2, uiMode2, nightMode2, rightToLeft2, smallestWidth2)) {
            return f.invoke();
        }
        return null;
    }

    public static final <T> T configuration(Context receiver, ScreenSize screenSize, ClosedRange<Integer> closedRange, String language, Orientation orientation, Boolean bool, Integer fromSdk, Integer sdk, UiMode uiMode, Boolean nightMode, Boolean rightToLeft, Integer smallestWidth, Function0<? extends T> f) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(f, "f");
        if (AnkoInternals.testConfiguration(receiver, screenSize, closedRange, language, orientation, bool, fromSdk, sdk, uiMode, nightMode, rightToLeft, smallestWidth)) {
            return f.invoke();
        }
        return null;
    }

    public static /* bridge */ /* synthetic */ Object configuration$default(Activity receiver, ScreenSize screenSize, ClosedRange density, String language, Orientation orientation, Boolean bool, Integer fromSdk, Integer sdk, UiMode uiMode, Boolean nightMode, Boolean rightToLeft, Integer smallestWidth, Function0 f, int i, Object obj) {
        Integer smallestWidth2;
        ScreenSize screenSize2 = (i & 1) != 0 ? (ScreenSize) null : screenSize;
        ClosedRange density2 = (i & 2) != 0 ? (ClosedRange) null : density;
        String language2 = (i & 4) != 0 ? (String) null : language;
        Orientation orientation2 = (i & 8) != 0 ? (Orientation) null : orientation;
        Boolean bool2 = (i & 16) != 0 ? (Boolean) null : bool;
        Integer fromSdk2 = (i & 32) != 0 ? (Integer) null : fromSdk;
        Integer sdk2 = (i & 64) != 0 ? (Integer) null : sdk;
        UiMode uiMode2 = (i & 128) != 0 ? (UiMode) null : uiMode;
        Boolean nightMode2 = (i & 256) != 0 ? (Boolean) null : nightMode;
        Boolean rightToLeft2 = (i & 512) != 0 ? (Boolean) null : rightToLeft;
        if ((i & 1024) != 0) {
            Integer smallestWidth3 = (Integer) null;
            smallestWidth2 = smallestWidth3;
        } else {
            smallestWidth2 = smallestWidth;
        }
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(f, "f");
        if (AnkoInternals.testConfiguration(receiver, screenSize2, density2, language2, orientation2, bool2, fromSdk2, sdk2, uiMode2, nightMode2, rightToLeft2, smallestWidth2)) {
            return f.invoke();
        }
        return null;
    }

    public static final <T> T configuration(Activity receiver, ScreenSize screenSize, ClosedRange<Integer> closedRange, String language, Orientation orientation, Boolean bool, Integer fromSdk, Integer sdk, UiMode uiMode, Boolean nightMode, Boolean rightToLeft, Integer smallestWidth, Function0<? extends T> f) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(f, "f");
        if (AnkoInternals.testConfiguration(receiver, screenSize, closedRange, language, orientation, bool, fromSdk, sdk, uiMode, nightMode, rightToLeft, smallestWidth)) {
            return f.invoke();
        }
        return null;
    }

    public static /* bridge */ /* synthetic */ Object configuration$default(AnkoContext receiver, ScreenSize screenSize, ClosedRange density, String language, Orientation orientation, Boolean bool, Integer fromSdk, Integer sdk, UiMode uiMode, Boolean nightMode, Boolean rightToLeft, Integer smallestWidth, Function0 f, int i, Object obj) {
        Integer smallestWidth2;
        ScreenSize screenSize2 = (i & 1) != 0 ? (ScreenSize) null : screenSize;
        ClosedRange density2 = (i & 2) != 0 ? (ClosedRange) null : density;
        String language2 = (i & 4) != 0 ? (String) null : language;
        Orientation orientation2 = (i & 8) != 0 ? (Orientation) null : orientation;
        Boolean bool2 = (i & 16) != 0 ? (Boolean) null : bool;
        Integer fromSdk2 = (i & 32) != 0 ? (Integer) null : fromSdk;
        Integer sdk2 = (i & 64) != 0 ? (Integer) null : sdk;
        UiMode uiMode2 = (i & 128) != 0 ? (UiMode) null : uiMode;
        Boolean nightMode2 = (i & 256) != 0 ? (Boolean) null : nightMode;
        Boolean rightToLeft2 = (i & 512) != 0 ? (Boolean) null : rightToLeft;
        if ((i & 1024) != 0) {
            Integer smallestWidth3 = (Integer) null;
            smallestWidth2 = smallestWidth3;
        } else {
            smallestWidth2 = smallestWidth;
        }
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(f, "f");
        if (AnkoInternals.testConfiguration(receiver.getCtx(), screenSize2, density2, language2, orientation2, bool2, fromSdk2, sdk2, uiMode2, nightMode2, rightToLeft2, smallestWidth2)) {
            return f.invoke();
        }
        return null;
    }

    public static final <T> T configuration(AnkoContext<?> receiver, ScreenSize screenSize, ClosedRange<Integer> closedRange, String language, Orientation orientation, Boolean bool, Integer fromSdk, Integer sdk, UiMode uiMode, Boolean nightMode, Boolean rightToLeft, Integer smallestWidth, Function0<? extends T> f) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(f, "f");
        if (AnkoInternals.testConfiguration(receiver.getCtx(), screenSize, closedRange, language, orientation, bool, fromSdk, sdk, uiMode, nightMode, rightToLeft, smallestWidth)) {
            return f.invoke();
        }
        return null;
    }

    public static /* bridge */ /* synthetic */ Object configuration$default(Fragment receiver, ScreenSize screenSize, ClosedRange density, String language, Orientation orientation, Boolean bool, Integer fromSdk, Integer sdk, UiMode uiMode, Boolean nightMode, Boolean rightToLeft, Integer smallestWidth, Function0 f, int i, Object obj) {
        Integer smallestWidth2;
        ScreenSize screenSize2 = (i & 1) != 0 ? (ScreenSize) null : screenSize;
        ClosedRange density2 = (i & 2) != 0 ? (ClosedRange) null : density;
        String language2 = (i & 4) != 0 ? (String) null : language;
        Orientation orientation2 = (i & 8) != 0 ? (Orientation) null : orientation;
        Boolean bool2 = (i & 16) != 0 ? (Boolean) null : bool;
        Integer fromSdk2 = (i & 32) != 0 ? (Integer) null : fromSdk;
        Integer sdk2 = (i & 64) != 0 ? (Integer) null : sdk;
        UiMode uiMode2 = (i & 128) != 0 ? (UiMode) null : uiMode;
        Boolean nightMode2 = (i & 256) != 0 ? (Boolean) null : nightMode;
        Boolean rightToLeft2 = (i & 512) != 0 ? (Boolean) null : rightToLeft;
        if ((i & 1024) != 0) {
            Integer smallestWidth3 = (Integer) null;
            smallestWidth2 = smallestWidth3;
        } else {
            smallestWidth2 = smallestWidth;
        }
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(f, "f");
        Activity act = receiver.getActivity();
        if (act == null || !AnkoInternals.testConfiguration(act, screenSize2, density2, language2, orientation2, bool2, fromSdk2, sdk2, uiMode2, nightMode2, rightToLeft2, smallestWidth2)) {
            return null;
        }
        return f.invoke();
    }

    public static final <T> T configuration(Fragment receiver, ScreenSize screenSize, ClosedRange<Integer> closedRange, String language, Orientation orientation, Boolean bool, Integer fromSdk, Integer sdk, UiMode uiMode, Boolean nightMode, Boolean rightToLeft, Integer smallestWidth, Function0<? extends T> f) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(f, "f");
        Activity act = receiver.getActivity();
        if (act == null || !AnkoInternals.testConfiguration(act, screenSize, closedRange, language, orientation, bool, fromSdk, sdk, uiMode, nightMode, rightToLeft, smallestWidth)) {
            return null;
        }
        return f.invoke();
    }

    public static final void doFromSdk(int version, Function0<Unit> f) {
        Intrinsics.checkParameterIsNotNull(f, "f");
        if (Build.VERSION.SDK_INT >= version) {
            f.invoke();
        }
    }

    public static final void doIfSdk(int version, Function0<Unit> f) {
        Intrinsics.checkParameterIsNotNull(f, "f");
        if (Build.VERSION.SDK_INT == version) {
            f.invoke();
        }
    }

    public static final <T> AttemptResult<T> attempt(Function0<? extends T> f) {
        Intrinsics.checkParameterIsNotNull(f, "f");
        Object value = null;
        Throwable error = (Throwable) null;
        try {
            value = f.invoke();
        } catch (Throwable t) {
            error = t;
        }
        return new AttemptResult<>(value, error);
    }
}
