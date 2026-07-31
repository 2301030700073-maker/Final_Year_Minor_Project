package org.jsoup.nodes;

import android.content.Intent;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.material3.ModalBottomSheet_androidKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.room.InvalidationTracker$implementation$1;
import app.k9mail.core.ui.compose.designsystem.atom.CheckboxKt$$ExternalSyntheticLambda0;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.concurrent.ThreadsKt$thread$thread$1;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.HexExtensionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.Uuid;
import kotlin.uuid.UuidKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import kotlinx.datetime.internal.format.parser.Copyable;
import kotlinx.datetime.internal.format.parser.ParseError;
import kotlinx.datetime.internal.format.parser.ParseException;
import kotlinx.datetime.internal.format.parser.Parser$ParserState;
import kotlinx.datetime.internal.format.parser.Parser$matchimpl$$inlined$sortByDescending$1;
import kotlinx.datetime.internal.format.parser.Parser$parse$1$3;
import kotlinx.datetime.internal.format.parser.ParserOperation;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.serialization.json.JsonObject$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeElevations;
import net.thunderbird.core.ui.compose.theme2.ThemeElevationsKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.changelog.internal.ChangeType;
import net.thunderbird.feature.mail.message.list.ui.effect.MessageListEffect;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.notification.api.NotificationSeverity;
import net.thunderbird.feature.notification.api.content.InAppNotification;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerInlineVisual;
import net.thunderbird.feature.notification.api.ui.style.InAppNotificationStyle;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;
import okio.Okio;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.parser.Parser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NodeUtils {
    /* renamed from: AnimatedExpandIcon-xqIIw2o, reason: not valid java name */
    public static final void m1077AnimatedExpandIconxqIIw2o(boolean z, Modifier modifier, boolean z2, Color color, Composer composer, int i, int i2) {
        int i3;
        int i4;
        int i5;
        Color color2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-861511259);
        int i6 = i | (gapComposer.changed(z) ? 4 : 2);
        int i7 = i2 & 2;
        if (i7 != 0) {
            i3 = i6 | 48;
        } else {
            i3 = i6 | (gapComposer.changed(modifier) ? 32 : 16);
        }
        int i8 = i2 & 4;
        if (i8 != 0) {
            i4 = i3 | 384;
        } else {
            i4 = i3 | (gapComposer.changed(z2) ? 256 : 128);
        }
        int i9 = i2 & 8;
        if (i9 != 0) {
            i5 = i4 | 3072;
        } else {
            i5 = i4 | (gapComposer.changed(color) ? 2048 : 1024);
        }
        int i10 = i5;
        if (gapComposer.shouldExecute(i10 & 1, (i10 & 1171) != 1170)) {
            if (i7 != 0) {
                modifier = Modifier.Companion.$$INSTANCE;
            }
            if (i8 != 0) {
                z2 = true;
            }
            if (i9 != 0) {
                color = null;
            }
            Color color3 = color;
            AtomicFU.m1009IconxqIIw2o(Icons$Outlined.KeyboardArrowDown, ClipKt.rotate(modifier, ((Number) AnimateAsStateKt.animateFloatAsState(z ? 180.0f : 0.0f, z2 ? ArcSplineKt.spring$default(0.0f, 0.0f, null, 7) : ArcSplineKt.snap$default(), "rotationAngle", gapComposer, 3072, 20).getValue()).floatValue()), color3, gapComposer, (i10 & 7168) | 384, 0);
            color2 = color3;
        } else {
            gapComposer.skipToGroupEnd();
            color2 = color;
        }
        Modifier modifier2 = modifier;
        boolean z3 = z2;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CheckboxKt$$ExternalSyntheticLambda0(z, modifier2, z3, color2, i, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0078  */
    /* renamed from: Avatar-OadGlvw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1078AvatarOadGlvw(final net.thunderbird.feature.account.avatar.Avatar r19, final long r20, final net.thunderbird.feature.account.avatar.ui.AvatarSize r22, androidx.compose.ui.Modifier r23, kotlin.jvm.functions.Function0 r24, androidx.compose.runtime.Composer r25, final int r26, final int r27) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.NodeUtils.m1078AvatarOadGlvw(net.thunderbird.feature.account.avatar.Avatar, long, net.thunderbird.feature.account.avatar.ui.AvatarSize, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: ClickableSurface-zSi9XkE, reason: not valid java name */
    public static final void m1079ClickableSurfacezSi9XkE(Function0 function0, Modifier modifier, Shape shape, long j, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer;
        Shape shape2;
        int i3;
        Shape shape3;
        function0.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-382285803);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 32 : 16;
        }
        int i4 = i2 | 384;
        if ((i & 3072) == 0) {
            i4 |= gapComposer2.changed(j) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i4 |= 8192;
        }
        if ((196608 & i) == 0) {
            i4 |= gapComposer2.changedInstance(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposer2.shouldExecute(i4 & 1, (74899 & i4) != 74898)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                ((ThemeElevations) gapComposer2.consume(ThemeElevationsKt.LocalThemeElevations)).getClass();
                i3 = i4 & (-57345);
                shape3 = ColorKt.RectangleShape;
            } else {
                gapComposer2.skipToGroupEnd();
                i3 = i4 & (-57345);
                shape3 = shape;
            }
            gapComposer2.endDefaults();
            int i5 = i3 & 126;
            int i6 = i3 << 3;
            gapComposer = gapComposer2;
            SurfaceKt.m359Surfaceo_FOJdg(function0, modifier, false, shape3, j, 0L, 0.0f, null, null, composableLambdaImpl, gapComposer, i5 | (i6 & 7168) | (i6 & 57344), 932);
            shape2 = shape3;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            shape2 = shape;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ModalBottomSheet_androidKt$$ExternalSyntheticLambda3(function0, modifier, shape2, j, composableLambdaImpl, i);
        }
    }

    public static final void ColorDialogView(SettingValue.Color color, Function1 function1, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        color.getClass();
        function1.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1792362025);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(color) : gapComposer.changedInstance(color) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(function02) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(Modifier.Companion.$$INSTANCE) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            Object[] objArr = new Object[0];
            int i3 = i2 & 14;
            boolean z = i3 == 4 || ((i2 & 8) != 0 && gapComposer.changedInstance(color));
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z || rememberedValue == neverEqualPolicy) {
                rememberedValue = new ResourceFileSystem$$ExternalSyntheticLambda0(5, color);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) SaverKt.rememberSaveable(objArr, (Function0) rememberedValue, gapComposer, 0);
            String str = (String) color.title.invoke();
            ImageVector imageVector = (ImageVector) color.icon.invoke();
            boolean changed = ((i2 & 112) == 32) | (i3 == 4 || ((i2 & 8) != 0 && gapComposer.changedInstance(color))) | gapComposer.changed(parcelableSnapshotMutableIntState);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new ConnectPlan$$ExternalSyntheticLambda0(function1, color, parcelableSnapshotMutableIntState, 14);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            int i4 = i2 << 3;
            Jsoup.SettingDialogLayout(str, imageVector, (Function0) rememberedValue2, function0, function02, false, Expect_jvmKt.rememberComposableLambda(1089773129, new BufferedChannel$$ExternalSyntheticLambda1(19, color, parcelableSnapshotMutableIntState), gapComposer), gapComposer, (i4 & 458752) | (i4 & 7168) | 12582912 | (57344 & i4), 64);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0((Object) color, function1, function0, (Object) function02, i, 11);
        }
    }

    public static BannerInlineVisual from(InAppNotification inAppNotification) {
        inAppNotification.getClass();
        InAppNotificationStyle inAppNotificationStyle = inAppNotification.getInAppNotificationStyle();
        if (!(inAppNotificationStyle instanceof InAppNotificationStyle.BannerInlineNotification)) {
            inAppNotificationStyle = null;
        }
        if (inAppNotificationStyle != null) {
            if (inAppNotificationStyle instanceof InAppNotificationStyle.BannerInlineNotification) {
                String title = inAppNotification.getTitle();
                int length = title.length();
                if (1 > length || length >= 101) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("A notification with a BannerInlineNotification style must have a title length of 1 to 100 characters.");
                    return null;
                }
                String contentText = inAppNotification.getContentText();
                if (contentText == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("A notification with a BannerInlineNotification style must have a contentText not null");
                    return null;
                }
                int length2 = contentText.length();
                if (1 > length2 || length2 >= 201) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("A notification with a BannerInlineNotification style must have a contentText length of 1 to 200 characters.");
                    return null;
                }
                NotificationSeverity severity = inAppNotification.getSeverity();
                Set access$getActionsWithoutTap = UuidKt.access$getActionsWithoutTap(inAppNotification);
                int size = access$getActionsWithoutTap.size();
                if (1 <= size && size < 3) {
                    return new BannerInlineVisual(title, contentText, severity, Okio.toPersistentList(access$getActionsWithoutTap));
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("A notification with a BannerInlineNotification style must have at one or two actions");
                return null;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Check failed.");
        }
        return null;
    }

    public static final ChangeType getType(String str) {
        ChangeType changeType = ChangeType.NEW;
        if (StringsKt__StringsJVMKt.startsWith(str, changeType.asPrefix(), false)) {
            return changeType;
        }
        ChangeType changeType2 = ChangeType.FIXED;
        return StringsKt__StringsJVMKt.startsWith(str, changeType2.asPrefix(), false) ? changeType2 : ChangeType.CHANGED;
    }

    /* renamed from: match-impl$default, reason: not valid java name */
    public static Copyable m1080matchimpl$default(ParserStructure parserStructure, String str, Copyable copyable) {
        String sb;
        copyable.getClass();
        ArrayList arrayList = new ArrayList();
        ArrayList mutableListOf = IntOffsetKt.mutableListOf(new Parser$ParserState(copyable, parserStructure, 0));
        while (true) {
            Parser$ParserState parser$ParserState = (Parser$ParserState) CollectionsKt.removeLastOrNull(mutableListOf);
            if (parser$ParserState == null) {
                if (arrayList.size() > 1) {
                    CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Parser$matchimpl$$inlined$sortByDescending$1());
                }
                if (arrayList.size() == 1) {
                    sb = "Position " + ((ParseError) arrayList.get(0)).position + ": " + ((String) ((ParseError) arrayList.get(0)).message.invoke());
                } else {
                    StringBuilder sb2 = new StringBuilder(arrayList.size() * 33);
                    CollectionsKt.joinTo$default(arrayList, sb2, ", ", "Errors: ", null, new JsonObject$$ExternalSyntheticLambda0(8), 56);
                    sb = sb2.toString();
                }
                throw new ParseException(sb);
            }
            Copyable copyable2 = (Copyable) ((Copyable) parser$ParserState.output).copy();
            int i = parser$ParserState.inputPosition;
            ParserStructure parserStructure2 = parser$ParserState.parserStructure;
            List list = parserStructure2.operations;
            List list2 = parserStructure2.followedBy;
            int size = list.size();
            int i2 = 0;
            while (true) {
                if (i2 < size) {
                    Object mo1023consumeFANa98k = ((ParserOperation) parserStructure2.operations.get(i2)).mo1023consumeFANa98k(copyable2, str, i);
                    if (mo1023consumeFANa98k instanceof Integer) {
                        i = ((Number) mo1023consumeFANa98k).intValue();
                        i2++;
                    } else {
                        if (!(mo1023consumeFANa98k instanceof ParseError)) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m(mo1023consumeFANa98k, "Unexpected parse result: ");
                            return null;
                        }
                        arrayList.add((ParseError) mo1023consumeFANa98k);
                    }
                } else if (!list2.isEmpty()) {
                    int size2 = list2.size() - 1;
                    if (size2 >= 0) {
                        while (true) {
                            int i3 = size2 - 1;
                            mutableListOf.add(new Parser$ParserState(copyable2, (ParserStructure) list2.get(size2), i));
                            if (i3 < 0) {
                                break;
                            }
                            size2 = i3;
                        }
                    }
                } else {
                    if (i == str.length()) {
                        return copyable2;
                    }
                    arrayList.add(new ParseError(i, Parser$parse$1$3.INSTANCE));
                }
            }
        }
    }

    /* renamed from: parse, reason: collision with other method in class */
    public static Uuid m1081parse(String str) {
        str.getClass();
        int length = str.length();
        int i = 0;
        if (length == 32) {
            long j = 0;
            while (i < 16) {
                long j2 = j << 4;
                char charAt = str.charAt(i);
                if ((charAt >>> '\b') == 0) {
                    long j3 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt];
                    if (j3 >= 0) {
                        j = j2 | j3;
                        i++;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i, str, "a hexadecimal digit");
                throw null;
            }
            long j4 = 0;
            for (int i2 = 16; i2 < 32; i2++) {
                long j5 = j4 << 4;
                char charAt2 = str.charAt(i2);
                if ((charAt2 >>> '\b') == 0) {
                    long j6 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt2];
                    if (j6 >= 0) {
                        j4 = j5 | j6;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i2, str, "a hexadecimal digit");
                throw null;
            }
            if (j != 0 || j4 != 0) {
                return new Uuid(j, j4);
            }
        } else {
            if (length != 36) {
                StringBuilder sb = new StringBuilder("Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \"");
                sb.append(str.length() <= 64 ? str : str.substring(0, 64).concat("..."));
                sb.append("\" of length ");
                sb.append(str.length());
                throw new IllegalArgumentException(sb.toString());
            }
            long j7 = 0;
            while (i < 8) {
                long j8 = j7 << 4;
                char charAt3 = str.charAt(i);
                if ((charAt3 >>> '\b') == 0) {
                    long j9 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt3];
                    if (j9 >= 0) {
                        j7 = j8 | j9;
                        i++;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i, str, "a hexadecimal digit");
                throw null;
            }
            if (str.charAt(8) != '-') {
                UuidKt.uuidThrowUnexpectedCharacterException(8, str, "'-' (hyphen)");
                throw null;
            }
            long j10 = 0;
            for (int i3 = 9; i3 < 13; i3++) {
                long j11 = j10 << 4;
                char charAt4 = str.charAt(i3);
                if ((charAt4 >>> '\b') == 0) {
                    long j12 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt4];
                    if (j12 >= 0) {
                        j10 = j11 | j12;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i3, str, "a hexadecimal digit");
                throw null;
            }
            if (str.charAt(13) != '-') {
                UuidKt.uuidThrowUnexpectedCharacterException(13, str, "'-' (hyphen)");
                throw null;
            }
            long j13 = 0;
            for (int i4 = 14; i4 < 18; i4++) {
                long j14 = j13 << 4;
                char charAt5 = str.charAt(i4);
                if ((charAt5 >>> '\b') == 0) {
                    long j15 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt5];
                    if (j15 >= 0) {
                        j13 = j14 | j15;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i4, str, "a hexadecimal digit");
                throw null;
            }
            if (str.charAt(18) != '-') {
                UuidKt.uuidThrowUnexpectedCharacterException(18, str, "'-' (hyphen)");
                throw null;
            }
            long j16 = 0;
            for (int i5 = 19; i5 < 23; i5++) {
                long j17 = j16 << 4;
                char charAt6 = str.charAt(i5);
                if ((charAt6 >>> '\b') == 0) {
                    long j18 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt6];
                    if (j18 >= 0) {
                        j16 = j17 | j18;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i5, str, "a hexadecimal digit");
                throw null;
            }
            if (str.charAt(23) != '-') {
                UuidKt.uuidThrowUnexpectedCharacterException(23, str, "'-' (hyphen)");
                throw null;
            }
            long j19 = 0;
            for (int i6 = 24; i6 < 36; i6++) {
                long j20 = j19 << 4;
                char charAt7 = str.charAt(i6);
                if ((charAt7 >>> '\b') == 0) {
                    long j21 = HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[charAt7];
                    if (j21 >= 0) {
                        j19 = j20 | j21;
                    }
                }
                UuidKt.uuidThrowUnexpectedCharacterException(i6, str, "a hexadecimal digit");
                throw null;
            }
            long j22 = (j7 << 32) | (j10 << 16) | j13;
            long j23 = (j16 << 48) | j19;
            if (j22 != 0 || j23 != 0) {
                return new Uuid(j22, j23);
            }
        }
        return Uuid.NIL;
    }

    public static Parser parser(Node node) {
        Document ownerDocument = node.ownerDocument();
        return ownerDocument != null ? ownerDocument.parser : new Parser(new HtmlTreeBuilder());
    }

    public static Stream stream(Element element, Class cls) {
        return StreamSupport.stream(Spliterators.spliteratorUnknownSize(new NodeIterator(element, cls), 273), false);
    }

    public static void thread$default(String str, Function0 function0, int i) {
        if ((i & 8) != 0) {
            str = null;
        }
        ThreadsKt$thread$thread$1 threadsKt$thread$thread$1 = new ThreadsKt$thread$thread$1(function0);
        if (str != null) {
            threadsKt$thread$thread$1.setName(str);
        }
        threadsKt$thread$thread$1.start();
    }

    public static final MessageListState.SelectingMessages toggleSelectMessages(MessageListState.SelectingMessages selectingMessages, List list, InvalidationTracker$implementation$1 invalidationTracker$implementation$1, InvalidationTracker$implementation$1 invalidationTracker$implementation$12) {
        ImmutableList<MessageItemUi> immutableList = selectingMessages.messages;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(immutableList, 10));
        int i = 0;
        for (MessageItemUi messageItemUi : immutableList) {
            if (list.contains(messageItemUi)) {
                messageItemUi = MessageItemUi.copy$default(messageItemUi, null, null, !messageItemUi.selected, false, 57343);
            }
            i += messageItemUi.selected ? 1 : 0;
            arrayList.add(messageItemUi);
        }
        AbstractPersistentList persistentList = Okio.toPersistentList(arrayList);
        if (i != 0) {
            return MessageListState.SelectingMessages.copy$default(selectingMessages, null, null, persistentList, 3);
        }
        invalidationTracker$implementation$1.invoke(MessageListEvent.ExitSelectionMode.INSTANCE);
        invalidationTracker$implementation$12.invoke(MessageListEffect.ResetToolbarActionMode.INSTANCE);
        return selectingMessages;
    }

    public abstract String getState();

    public abstract Intent toIntent();

    /* JADX WARN: Removed duplicated region for block: B:17:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static de.cketti.changelog.XmlParser parse(java.lang.String r8) {
        /*
            java.lang.String r0 = "HTTP/1."
            r1 = 0
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r8, r0, r1)
            okhttp3.Protocol r2 = okhttp3.Protocol.HTTP_1_0
            okhttp3.Protocol r3 = okhttp3.Protocol.HTTP_1_1
            r4 = 4
            r5 = 32
            java.lang.String r6 = "Unexpected status line: "
            if (r0 == 0) goto L43
            int r0 = r8.length()
            r1 = 9
            if (r0 < r1) goto L39
            r0 = 8
            char r0 = r8.charAt(r0)
            if (r0 != r5) goto L39
            r0 = 7
            char r0 = r8.charAt(r0)
            int r0 = r0 + (-48)
            if (r0 == 0) goto L58
            r2 = 1
            if (r0 != r2) goto L2f
            goto L57
        L2f:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        L39:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        L43:
            java.lang.String r0 = "ICY "
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r8, r0, r1)
            if (r0 == 0) goto L4d
            r1 = r4
            goto L58
        L4d:
            java.lang.String r0 = "SOURCETABLE "
            boolean r0 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r8, r0, r1)
            if (r0 == 0) goto La6
            r1 = 12
        L57:
            r2 = r3
        L58:
            int r0 = r8.length()
            int r3 = r1 + 3
            if (r0 < r3) goto L9c
            java.lang.String r0 = r8.substring(r1, r3)
            java.lang.Integer r0 = kotlin.text.StringsKt__StringsJVMKt.toIntOrNull(r0)
            if (r0 == 0) goto L92
            int r0 = r0.intValue()
            int r7 = r8.length()
            if (r7 <= r3) goto L8a
            char r3 = r8.charAt(r3)
            if (r3 != r5) goto L80
            int r1 = r1 + r4
            java.lang.String r8 = r8.substring(r1)
            goto L8c
        L80:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        L8a:
            java.lang.String r8 = ""
        L8c:
            de.cketti.changelog.XmlParser r1 = new de.cketti.changelog.XmlParser
            r1.<init>(r2, r0, r8)
            return r1
        L92:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        L9c:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        La6:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r8 = r6.concat(r8)
            r0.<init>(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.nodes.NodeUtils.parse(java.lang.String):de.cketti.changelog.XmlParser");
    }
}
