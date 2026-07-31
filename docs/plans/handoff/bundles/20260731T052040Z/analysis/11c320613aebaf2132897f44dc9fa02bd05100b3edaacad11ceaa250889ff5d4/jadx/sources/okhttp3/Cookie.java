package okhttp3;

import android.animation.TimeInterpolator;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import android.widget.EdgeEffect;
import android.widget.ImageView;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusOwnerImpl$focusSearch$1;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout$BeyondBoundsScope;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import androidx.core.graphics.PathParser$PathDataNode;
import androidx.core.widget.EdgeEffectCompat$Api31Impl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.ComposeLifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.compose.RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import androidx.room.rxjava3.RxRoom$createMaybe$1;
import androidx.sqlite.SQLite;
import androidx.transition.Transition;
import androidx.work.Data;
import androidx.work.Data_Kt;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1;
import coil3.Extras;
import coil3.Image;
import coil3.ImageLoaders$executeBlocking$1;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.UriKt;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0;
import coil3.request.ImageResult;
import coil3.target.ImageViewTarget;
import com.google.protobuf.ArrayDecoders$Registers;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.IntArrayList;
import com.google.protobuf.Internal;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.MessageSchema;
import com.google.protobuf.Schema;
import com.google.protobuf.UnknownFieldSetLite;
import com.jakewharton.rxbinding4.view.ViewClickObservable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeDefer;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.text.DateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import kotlinx.serialization.internal.Platform_commonKt;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.http.DateFormattingKt;
import okio.Okio;
import okio.Options;
import org.mozilla.javascript.Token;
import org.reactivestreams.Subscriber;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Cookie {
    public final String domain;
    public final long expiresAt;
    public final boolean hostOnly;
    public final boolean httpOnly;
    public final String name;
    public final String path;
    public final boolean persistent;
    public final String sameSite;
    public final boolean secure;
    public final String value;
    public static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    public static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    public static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    public static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, String str5) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j;
        this.domain = str3;
        this.path = str4;
        this.secure = z;
        this.httpOnly = z2;
        this.persistent = z3;
        this.hostOnly = z4;
        this.sameSite = str5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        return cookie.name.equals(this.name) && cookie.value.equals(this.value) && cookie.expiresAt == this.expiresAt && cookie.domain.equals(this.domain) && cookie.path.equals(this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly && Intrinsics.areEqual(cookie.sameSite, this.sameSite);
    }

    public final int hashCode() {
        int m = Modifier.CC.m(Modifier.CC.m(527, 31, this.name), 31, this.value);
        long j = this.expiresAt;
        int m2 = (((((((Modifier.CC.m(Modifier.CC.m((m + ((int) (j ^ (j >>> 32)))) * 31, 31, this.domain), 31, this.path) + (this.secure ? 1231 : 1237)) * 31) + (this.httpOnly ? 1231 : 1237)) * 31) + (this.persistent ? 1231 : 1237)) * 31) + (this.hostOnly ? 1231 : 1237)) * 31;
        String str = this.sameSite;
        return m2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append('=');
        sb.append(this.value);
        if (this.persistent) {
            long j = this.expiresAt;
            if (j == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                String format = ((DateFormat) DateFormattingKt.STANDARD_DATE_FORMAT.get()).format(new Date(j));
                format.getClass();
                sb.append(format);
            }
        }
        if (!this.hostOnly) {
            sb.append("; domain=");
            sb.append(this.domain);
        }
        sb.append("; path=");
        sb.append(this.path);
        if (this.secure) {
            sb.append("; secure");
        }
        if (this.httpOnly) {
            sb.append("; httponly");
        }
        String str = this.sameSite;
        if (str != null) {
            sb.append("; samesite=");
            sb.append(str);
        }
        return sb.toString();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Companion {
        public static final Object[] access$insertEntryAtIndex(Object[] objArr, int i, Object obj, Object obj2) {
            Object[] objArr2 = new Object[objArr.length + 2];
            ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
            ArraysKt.copyInto(objArr, objArr2, i + 2, i, objArr.length);
            objArr2[i] = obj;
            objArr2[i + 1] = obj2;
            return objArr2;
        }

        public static final Object[] access$removeEntryAtIndex(int i, Object[] objArr) {
            Object[] objArr2 = new Object[objArr.length - 2];
            ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
            ArraysKt.copyInto(objArr, objArr2, i, i + 2, objArr.length);
            return objArr2;
        }

        public static final Object[] access$removeNodeAtIndex(int i, Object[] objArr) {
            Object[] objArr2 = new Object[objArr.length - 1];
            ArraysKt.copyInto$default(objArr, objArr2, 0, i, 6);
            ArraysKt.copyInto(objArr, objArr2, i, i + 1, objArr.length);
            return objArr2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
        
            if (r21 != 3) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x004d, code lost:
        
            if (r21 != 4) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0050, code lost:
        
            if (r21 != 3) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
        
            r1 = r11 - r19.right;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x006d, code lost:
        
            if (r1 >= 0.0f) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
        
            r1 = 0.0f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0071, code lost:
        
            if (r21 != 3) goto L40;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0073, code lost:
        
            r11 = r11 - r7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0087, code lost:
        
            if (r11 >= 1.0f) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0089, code lost:
        
            r11 = 1.0f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
        
            if (r1 >= r11) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
        
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x008f, code lost:
        
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
        
            if (r21 != 4) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0077, code lost:
        
            r11 = r2 - r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x007a, code lost:
        
            if (r21 != 5) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x007c, code lost:
        
            r11 = r9 - r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x007f, code lost:
        
            if (r21 != 6) goto L53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0081, code lost:
        
            r11 = r6 - r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0090, code lost:
        
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2("This function should only be used for 2-D focus search");
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0093, code lost:
        
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0057, code lost:
        
            if (r21 != 4) goto L31;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0059, code lost:
        
            r1 = r19.left - r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x005d, code lost:
        
            if (r21 != 5) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x005f, code lost:
        
            r1 = r9 - r19.bottom;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0064, code lost:
        
            if (r21 != 6) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0066, code lost:
        
            r1 = r19.top - r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x0094, code lost:
        
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2("This function should only be used for 2-D focus search");
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
        
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x004f, code lost:
        
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x003a, code lost:
        
            if (r10 <= r7) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0041, code lost:
        
            if (r9 >= r6) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0048, code lost:
        
            if (r8 <= r5) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
        
            if (r11 >= r2) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0098, code lost:
        
            return true;
         */
        /* renamed from: beamBeats-I7lrPNg, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final boolean m702beamBeatsI7lrPNg(androidx.compose.ui.geometry.Rect r18, androidx.compose.ui.geometry.Rect r19, androidx.compose.ui.geometry.Rect r20, int r21) {
            /*
                r0 = r18
                r1 = r19
                r2 = r20
                r3 = r21
                boolean r4 = beamBeats_I7lrPNg$inSourceBeam(r3, r2, r0)
                float r5 = r2.top
                float r6 = r2.bottom
                float r7 = r2.left
                float r2 = r2.right
                float r8 = r0.bottom
                float r9 = r0.top
                float r10 = r0.right
                float r11 = r0.left
                r12 = 0
                if (r4 != 0) goto L9c
                boolean r0 = beamBeats_I7lrPNg$inSourceBeam(r3, r1, r0)
                if (r0 != 0) goto L27
                goto L9c
            L27:
                java.lang.String r4 = "This function should only be used for 2-D focus search"
                r13 = 6
                r14 = 5
                r15 = 4
                r18 = 1
                r0 = 3
                if (r3 != r0) goto L36
                int r16 = (r11 > r2 ? 1 : (r11 == r2 ? 0 : -1))
                if (r16 < 0) goto L98
                goto L4a
            L36:
                if (r3 != r15) goto L3d
                int r16 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
                if (r16 > 0) goto L98
                goto L4a
            L3d:
                if (r3 != r14) goto L44
                int r16 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
                if (r16 < 0) goto L98
                goto L4a
            L44:
                if (r3 != r13) goto L99
                int r16 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
                if (r16 > 0) goto L98
            L4a:
                if (r3 != r0) goto L4d
                goto L4f
            L4d:
                if (r3 != r15) goto L50
            L4f:
                return r18
            L50:
                if (r3 != r0) goto L57
                float r1 = r1.right
                float r1 = r11 - r1
                goto L69
            L57:
                if (r3 != r15) goto L5d
                float r1 = r1.left
                float r1 = r1 - r10
                goto L69
            L5d:
                if (r3 != r14) goto L64
                float r1 = r1.bottom
                float r1 = r9 - r1
                goto L69
            L64:
                if (r3 != r13) goto L94
                float r1 = r1.top
                float r1 = r1 - r8
            L69:
                r16 = 0
                int r17 = (r1 > r16 ? 1 : (r1 == r16 ? 0 : -1))
                if (r17 >= 0) goto L71
                r1 = r16
            L71:
                if (r3 != r0) goto L75
                float r11 = r11 - r7
                goto L83
            L75:
                if (r3 != r15) goto L7a
                float r11 = r2 - r10
                goto L83
            L7a:
                if (r3 != r14) goto L7f
                float r11 = r9 - r5
                goto L83
            L7f:
                if (r3 != r13) goto L90
                float r11 = r6 - r8
            L83:
                r0 = 1065353216(0x3f800000, float:1.0)
                int r2 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
                if (r2 >= 0) goto L8a
                r11 = r0
            L8a:
                int r0 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
                if (r0 >= 0) goto L8f
                return r18
            L8f:
                return r12
            L90:
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
                return r12
            L94:
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
                return r12
            L98:
                return r18
            L99:
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            L9c:
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.m702beamBeatsI7lrPNg(androidx.compose.ui.geometry.Rect, androidx.compose.ui.geometry.Rect, androidx.compose.ui.geometry.Rect, int):boolean");
        }

        public static final boolean beamBeats_I7lrPNg$inSourceBeam(int i, Rect rect, Rect rect2) {
            if (i == 3 || i == 4) {
                return rect.bottom > rect2.top && rect.top < rect2.bottom;
            }
            if (i == 5 || i == 6) {
                return rect.right > rect2.left && rect.left < rect2.right;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This function should only be used for 2-D focus search");
            return false;
        }

        public static final int ceilToIntPx(float f) {
            return Math.round((float) Math.ceil(f));
        }

        public static int clamp(int i, int i2, int i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }

        public static final void collectAccessibleChildren(FocusTargetNode focusTargetNode, MutableVector mutableVector) {
            if (!focusTargetNode.node.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
            }
            MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16]);
            Modifier.Node node = focusTargetNode.node;
            Modifier.Node node2 = node.child;
            if (node2 == null) {
                HitTestResultKt.access$addLayoutNodeChildren(mutableVector2, node);
            } else {
                mutableVector2.add(node2);
            }
            while (true) {
                int i = mutableVector2.size;
                if (i == 0) {
                    return;
                }
                Modifier.Node node3 = (Modifier.Node) mutableVector2.removeAt(i - 1);
                if ((node3.aggregateChildKindSet & 1024) == 0) {
                    HitTestResultKt.access$addLayoutNodeChildren(mutableVector2, node3);
                } else {
                    while (true) {
                        if (node3 == null) {
                            break;
                        }
                        if ((node3.kindSet & 1024) != 0) {
                            MutableVector mutableVector3 = null;
                            while (node3 != null) {
                                if (node3 instanceof FocusTargetNode) {
                                    FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                    if (focusTargetNode2.isAttached && !HitTestResultKt.requireLayoutNode(focusTargetNode2).isDeactivated) {
                                        if (focusTargetNode2.fetchFocusProperties$ui().canFocus) {
                                            mutableVector.add(focusTargetNode2);
                                        } else {
                                            collectAccessibleChildren(focusTargetNode2, mutableVector);
                                        }
                                    }
                                } else if ((node3.kindSet & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i2 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                        if ((node4.kindSet & 1024) != 0) {
                                            i2++;
                                            if (i2 == 1) {
                                                node3 = node4;
                                            } else {
                                                if (mutableVector3 == null) {
                                                    mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node3 != null) {
                                                    mutableVector3.add(node3);
                                                    node3 = null;
                                                }
                                                mutableVector3.add(node4);
                                            }
                                        }
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                node3 = HitTestResultKt.access$pop(mutableVector3);
                            }
                        } else {
                            node3 = node3.child;
                        }
                    }
                }
            }
        }

        public static final Flowable createFlowable(RoomDatabase roomDatabase, boolean z, String[] strArr, Function1 function1) {
            roomDatabase.getClass();
            FlowUtil$createFlow$$inlined$map$1 createFlow = Options.Companion.createFlow(roomDatabase, z, strArr, function1);
            int i = 2;
            return new ViewClickObservable(new RxConvertKt$$ExternalSyntheticLambda0(roomDatabase.getQueryContext(), new WorkConstraintsTracker$track$$inlined$combine$1(createFlow, i), 0), i).toFlowable(5);
        }

        public static final MaybeDefer createMaybe(RoomDatabase roomDatabase, Function1 function1) {
            CoroutineContext queryContext = roomDatabase.getQueryContext();
            Job.Key key = Job.Key.$$INSTANCE;
            CoroutineContext minusKey = queryContext.minusKey(key);
            RxRoom$createMaybe$1 rxRoom$createMaybe$1 = new RxRoom$createMaybe$1(roomDatabase, null, function1, true, false);
            if (minusKey.get(key) == null) {
                return new MaybeDefer(new RxConvertKt$$ExternalSyntheticLambda0(minusKey, rxRoom$createMaybe$1, 18), 1);
            }
            DecodeUtils$$ExternalSyntheticBUOutline0.m$1(minusKey, "Maybe context cannot contain job in it.Its lifecycle should be managed via Disposable handle. Had ");
            return null;
        }

        public static int dateCharacterOffset(String str, int i, int i2, boolean z) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || ('0' <= charAt && charAt < ':') || (('a' <= charAt && charAt < '{') || (('A' <= charAt && charAt < '[') || charAt == ':'))) == (!z)) {
                    return i;
                }
                i++;
            }
            return i2;
        }

        public static int decodeBytes(byte[] bArr, int i, ArrayDecoders$Registers arrayDecoders$Registers) {
            int decodeVarint32 = decodeVarint32(bArr, i, arrayDecoders$Registers);
            int i2 = arrayDecoders$Registers.int1;
            if (i2 < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            if (i2 > bArr.length - decodeVarint32) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if (i2 == 0) {
                arrayDecoders$Registers.object1 = ByteString.EMPTY;
                return decodeVarint32;
            }
            arrayDecoders$Registers.object1 = ByteString.copyFrom(bArr, decodeVarint32, i2);
            return decodeVarint32 + i2;
        }

        public static int decodeFixed32(int i, byte[] bArr) {
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public static long decodeFixed64(int i, byte[] bArr) {
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }

        public static int decodeGroupField(Schema schema, byte[] bArr, int i, int i2, int i3, ArrayDecoders$Registers arrayDecoders$Registers) {
            GeneratedMessageLite newInstance = schema.newInstance();
            int mergeGroupField = mergeGroupField(newInstance, schema, bArr, i, i2, i3, arrayDecoders$Registers);
            schema.makeImmutable(newInstance);
            arrayDecoders$Registers.object1 = newInstance;
            return mergeGroupField;
        }

        public static int decodeMessageList(Schema schema, int i, byte[] bArr, int i2, int i3, Internal.ProtobufList protobufList, ArrayDecoders$Registers arrayDecoders$Registers) {
            GeneratedMessageLite newInstance = schema.newInstance();
            Schema schema2 = schema;
            byte[] bArr2 = bArr;
            int i4 = i3;
            ArrayDecoders$Registers arrayDecoders$Registers2 = arrayDecoders$Registers;
            int mergeMessageField = mergeMessageField(newInstance, schema2, bArr2, i2, i4, arrayDecoders$Registers2);
            schema2.makeImmutable(newInstance);
            arrayDecoders$Registers2.object1 = newInstance;
            protobufList.add(newInstance);
            while (mergeMessageField < i4) {
                ArrayDecoders$Registers arrayDecoders$Registers3 = arrayDecoders$Registers2;
                int i5 = i4;
                int decodeVarint32 = decodeVarint32(bArr2, mergeMessageField, arrayDecoders$Registers3);
                if (i != arrayDecoders$Registers3.int1) {
                    break;
                }
                byte[] bArr3 = bArr2;
                Schema schema3 = schema2;
                GeneratedMessageLite newInstance2 = schema3.newInstance();
                mergeMessageField = mergeMessageField(newInstance2, schema3, bArr3, decodeVarint32, i5, arrayDecoders$Registers3);
                schema2 = schema3;
                bArr2 = bArr3;
                i4 = i5;
                arrayDecoders$Registers2 = arrayDecoders$Registers3;
                schema2.makeImmutable(newInstance2);
                arrayDecoders$Registers2.object1 = newInstance2;
                protobufList.add(newInstance2);
            }
            return mergeMessageField;
        }

        public static int decodeUnknownField(int i, byte[] bArr, int i2, int i3, UnknownFieldSetLite unknownFieldSetLite, ArrayDecoders$Registers arrayDecoders$Registers) {
            if ((i >>> 3) == 0) {
                throw new InvalidProtocolBufferException("Protocol message contained an invalid tag (zero).");
            }
            int i4 = i & 7;
            if (i4 == 0) {
                int decodeVarint64 = decodeVarint64(bArr, i2, arrayDecoders$Registers);
                unknownFieldSetLite.storeField(i, Long.valueOf(arrayDecoders$Registers.long1));
                return decodeVarint64;
            }
            if (i4 == 1) {
                unknownFieldSetLite.storeField(i, Long.valueOf(decodeFixed64(i2, bArr)));
                return i2 + 8;
            }
            if (i4 == 2) {
                int decodeVarint32 = decodeVarint32(bArr, i2, arrayDecoders$Registers);
                int i5 = arrayDecoders$Registers.int1;
                if (i5 < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                if (i5 > bArr.length - decodeVarint32) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                if (i5 == 0) {
                    unknownFieldSetLite.storeField(i, ByteString.EMPTY);
                } else {
                    unknownFieldSetLite.storeField(i, ByteString.copyFrom(bArr, decodeVarint32, i5));
                }
                return decodeVarint32 + i5;
            }
            if (i4 != 3) {
                if (i4 != 5) {
                    throw new InvalidProtocolBufferException("Protocol message contained an invalid tag (zero).");
                }
                unknownFieldSetLite.storeField(i, Integer.valueOf(decodeFixed32(i2, bArr)));
                return i2 + 4;
            }
            UnknownFieldSetLite newInstance = UnknownFieldSetLite.newInstance();
            int i6 = (i & (-8)) | 4;
            int i7 = arrayDecoders$Registers.recursionDepth + 1;
            arrayDecoders$Registers.recursionDepth = i7;
            if (i7 >= 100) {
                throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            }
            int i8 = 0;
            while (true) {
                if (i2 >= i3) {
                    break;
                }
                int decodeVarint322 = decodeVarint32(bArr, i2, arrayDecoders$Registers);
                int i9 = arrayDecoders$Registers.int1;
                if (i9 == i6) {
                    i8 = i9;
                    i2 = decodeVarint322;
                    break;
                }
                i2 = decodeUnknownField(i9, bArr, decodeVarint322, i3, newInstance, arrayDecoders$Registers);
                i8 = i9;
            }
            arrayDecoders$Registers.recursionDepth--;
            if (i2 > i3 || i8 != i6) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            unknownFieldSetLite.storeField(i, newInstance);
            return i2;
        }

        public static int decodeVarint32(int i, byte[] bArr, int i2, ArrayDecoders$Registers arrayDecoders$Registers) {
            int i3 = i & Token.SWITCH;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                arrayDecoders$Registers.int1 = i3 | (b << 7);
                return i4;
            }
            int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
            int i6 = i2 + 2;
            byte b2 = bArr[i4];
            if (b2 >= 0) {
                arrayDecoders$Registers.int1 = i5 | (b2 << 14);
                return i6;
            }
            int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
            int i8 = i2 + 3;
            byte b3 = bArr[i6];
            if (b3 >= 0) {
                arrayDecoders$Registers.int1 = i7 | (b3 << 21);
                return i8;
            }
            int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
            int i10 = i2 + 4;
            byte b4 = bArr[i8];
            if (b4 >= 0) {
                arrayDecoders$Registers.int1 = i9 | (b4 << 28);
                return i10;
            }
            int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
            while (true) {
                int i12 = i10 + 1;
                if (bArr[i10] >= 0) {
                    arrayDecoders$Registers.int1 = i11;
                    return i12;
                }
                i10 = i12;
            }
        }

        public static int decodeVarint32List(int i, byte[] bArr, int i2, int i3, Internal.ProtobufList protobufList, ArrayDecoders$Registers arrayDecoders$Registers) {
            IntArrayList intArrayList = (IntArrayList) protobufList;
            int decodeVarint32 = decodeVarint32(bArr, i2, arrayDecoders$Registers);
            intArrayList.addInt(arrayDecoders$Registers.int1);
            while (decodeVarint32 < i3) {
                int decodeVarint322 = decodeVarint32(bArr, decodeVarint32, arrayDecoders$Registers);
                if (i != arrayDecoders$Registers.int1) {
                    break;
                }
                decodeVarint32 = decodeVarint32(bArr, decodeVarint322, arrayDecoders$Registers);
                intArrayList.addInt(arrayDecoders$Registers.int1);
            }
            return decodeVarint32;
        }

        public static int decodeVarint64(byte[] bArr, int i, ArrayDecoders$Registers arrayDecoders$Registers) {
            int i2 = i + 1;
            long j = bArr[i];
            if (j >= 0) {
                arrayDecoders$Registers.long1 = j;
                return i2;
            }
            int i3 = i + 2;
            byte b = bArr[i2];
            long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
            int i4 = 7;
            while (b < 0) {
                int i5 = i3 + 1;
                i4 += 7;
                j2 |= (r10 & Byte.MAX_VALUE) << i4;
                b = bArr[i3];
                i3 = i5;
            }
            arrayDecoders$Registers.long1 = j2;
            return i3;
        }

        /* renamed from: findBestCandidate-4WY_MpI, reason: not valid java name */
        public static final FocusTargetNode m703findBestCandidate4WY_MpI(MutableVector mutableVector, Rect rect, int i) {
            Rect translate;
            FocusTargetNode focusTargetNode = null;
            if (i == 3) {
                translate = rect.translate((rect.right - rect.left) + 1.0f, 0.0f);
            } else if (i == 4) {
                translate = rect.translate(-((rect.right - rect.left) + 1.0f), 0.0f);
            } else if (i == 5) {
                translate = rect.translate(0.0f, (rect.bottom - rect.top) + 1.0f);
            } else {
                if (i != 6) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This function should only be used for 2-D focus search");
                    return null;
                }
                translate = rect.translate(0.0f, -((rect.bottom - rect.top) + 1.0f));
            }
            Object[] objArr = mutableVector.content;
            int i2 = mutableVector.size;
            for (int i3 = 0; i3 < i2; i3++) {
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArr[i3];
                if (Options.Companion.isEligibleForFocusSearch(focusTargetNode2)) {
                    Rect focusRect = Options.Companion.focusRect(focusTargetNode2);
                    if (m706isBetterCandidateI7lrPNg(focusRect, translate, rect, i)) {
                        focusTargetNode = focusTargetNode2;
                        translate = focusRect;
                    }
                }
            }
            return focusTargetNode;
        }

        /* renamed from: findChildCorrespondingToFocusEnter--OM-vw8, reason: not valid java name */
        public static final boolean m704findChildCorrespondingToFocusEnterOMvw8(FocusTargetNode focusTargetNode, int i, Function1 function1) {
            Rect rect;
            MutableVector mutableVector = new MutableVector(new FocusTargetNode[16]);
            collectAccessibleChildren(focusTargetNode, mutableVector);
            int i2 = mutableVector.size;
            if (i2 <= 1) {
                FocusTargetNode focusTargetNode2 = (FocusTargetNode) (i2 == 0 ? null : mutableVector.content[0]);
                if (focusTargetNode2 != null) {
                    return ((Boolean) function1.invoke(focusTargetNode2)).booleanValue();
                }
            } else {
                if (i == 7) {
                    i = 4;
                }
                if (i == 4 || i == 6) {
                    Rect focusRect = Options.Companion.focusRect(focusTargetNode);
                    float f = focusRect.left;
                    float f2 = focusRect.top;
                    rect = new Rect(f, f2, f, f2);
                } else {
                    if (i != 3 && i != 5) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This function should only be used for 2-D focus search");
                        return false;
                    }
                    Rect focusRect2 = Options.Companion.focusRect(focusTargetNode);
                    float f3 = focusRect2.right;
                    float f4 = focusRect2.bottom;
                    rect = new Rect(f3, f4, f3, f4);
                }
                FocusTargetNode m703findBestCandidate4WY_MpI = m703findBestCandidate4WY_MpI(mutableVector, rect, i);
                if (m703findBestCandidate4WY_MpI != null) {
                    return ((Boolean) function1.invoke(m703findBestCandidate4WY_MpI)).booleanValue();
                }
            }
            return false;
        }

        public static final KSerializer findPolymorphicSerializer(AbstractPolymorphicSerializer abstractPolymorphicSerializer, SQLite sQLite, Object obj) {
            abstractPolymorphicSerializer.getClass();
            obj.getClass();
            KSerializer findPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(sQLite, obj);
            if (findPolymorphicSerializerOrNull != null) {
                return findPolymorphicSerializerOrNull;
            }
            ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(obj.getClass());
            ClassReference baseClass = abstractPolymorphicSerializer.getBaseClass();
            baseClass.getClass();
            String simpleName = orCreateKotlinClass.getSimpleName();
            if (simpleName == null) {
                simpleName = String.valueOf(orCreateKotlinClass);
            }
            Platform_commonKt.throwSubtypeNotRegistered(simpleName, baseClass);
            throw null;
        }

        public static Data fromByteArray(byte[] bArr) {
            bArr.getClass();
            if (bArr.length > 10240) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Data cannot occupy more than 10240 bytes when serialized");
                return null;
            }
            if (bArr.length == 0) {
                return Data.EMPTY;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                byte[] bArr2 = new byte[2];
                byteArrayInputStream.read(bArr2);
                int i = 0;
                boolean z = bArr2[0] == -84 && bArr2[1] == -19;
                byteArrayInputStream.reset();
                if (z) {
                    ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        int readInt = objectInputStream.readInt();
                        while (i < readInt) {
                            linkedHashMap.put(objectInputStream.readUTF(), objectInputStream.readObject());
                            i++;
                        }
                        objectInputStream.close();
                    } finally {
                    }
                } else {
                    DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                    try {
                        short readShort = dataInputStream.readShort();
                        if (readShort == -21521) {
                            short readShort2 = dataInputStream.readShort();
                            if (readShort2 != 1) {
                                _UtilJvmKt$$ExternalSyntheticLambda1.m((Object) Modifier.CC.m(readShort2, "Unsupported version number: "));
                            }
                        } else {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m((Object) Modifier.CC.m(readShort, "Magic number doesn't match: "));
                        }
                        int readInt2 = dataInputStream.readInt();
                        while (i < readInt2) {
                            linkedHashMap.put(dataInputStream.readUTF(), fromByteArray$readValue(dataInputStream, dataInputStream.readByte()));
                            i++;
                        }
                        dataInputStream.close();
                    } finally {
                    }
                }
            } catch (IOException e) {
                Logger$LogcatLogger.get().error(Data_Kt.TAG, "Error in Data#fromByteArray: ", e);
            } catch (ClassNotFoundException e2) {
                Logger$LogcatLogger.get().error(Data_Kt.TAG, "Error in Data#fromByteArray: ", e2);
            }
            return new Data(linkedHashMap);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Serializable, java.lang.Double[]] */
        /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Serializable, java.lang.Float[]] */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.io.Serializable, java.lang.Long[]] */
        /* JADX WARN: Type inference failed for: r0v4, types: [java.io.Serializable, java.lang.Integer[]] */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Serializable, java.lang.Byte[]] */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.io.Serializable, java.lang.Boolean[]] */
        /* JADX WARN: Type inference failed for: r1v14, types: [java.io.Serializable, java.lang.String[]] */
        public static final Serializable fromByteArray$readValue(DataInputStream dataInputStream, byte b) {
            if (b == 0) {
                return null;
            }
            if (b == 1) {
                return Boolean.valueOf(dataInputStream.readBoolean());
            }
            if (b == 2) {
                return Byte.valueOf(dataInputStream.readByte());
            }
            if (b == 3) {
                return Integer.valueOf(dataInputStream.readInt());
            }
            if (b == 4) {
                return Long.valueOf(dataInputStream.readLong());
            }
            if (b == 5) {
                return Float.valueOf(dataInputStream.readFloat());
            }
            if (b == 6) {
                return Double.valueOf(dataInputStream.readDouble());
            }
            if (b == 7) {
                return dataInputStream.readUTF();
            }
            int i = 0;
            if (b == 8) {
                int readInt = dataInputStream.readInt();
                ?? r0 = new Boolean[readInt];
                while (i < readInt) {
                    r0[i] = Boolean.valueOf(dataInputStream.readBoolean());
                    i++;
                }
                return r0;
            }
            if (b == 9) {
                int readInt2 = dataInputStream.readInt();
                ?? r02 = new Byte[readInt2];
                while (i < readInt2) {
                    r02[i] = Byte.valueOf(dataInputStream.readByte());
                    i++;
                }
                return r02;
            }
            if (b == 10) {
                int readInt3 = dataInputStream.readInt();
                ?? r03 = new Integer[readInt3];
                while (i < readInt3) {
                    r03[i] = Integer.valueOf(dataInputStream.readInt());
                    i++;
                }
                return r03;
            }
            if (b == 11) {
                int readInt4 = dataInputStream.readInt();
                ?? r04 = new Long[readInt4];
                while (i < readInt4) {
                    r04[i] = Long.valueOf(dataInputStream.readLong());
                    i++;
                }
                return r04;
            }
            if (b == 12) {
                int readInt5 = dataInputStream.readInt();
                ?? r05 = new Float[readInt5];
                while (i < readInt5) {
                    r05[i] = Float.valueOf(dataInputStream.readFloat());
                    i++;
                }
                return r05;
            }
            if (b == 13) {
                int readInt6 = dataInputStream.readInt();
                ?? r06 = new Double[readInt6];
                while (i < readInt6) {
                    r06[i] = Double.valueOf(dataInputStream.readDouble());
                    i++;
                }
                return r06;
            }
            if (b != 14) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2(Modifier.CC.m(b, "Unsupported type "));
                return null;
            }
            int readInt7 = dataInputStream.readInt();
            ?? r1 = new String[readInt7];
            while (i < readInt7) {
                String readUTF = dataInputStream.readUTF();
                if (Intrinsics.areEqual(readUTF, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d")) {
                    readUTF = null;
                }
                r1[i] = readUTF;
                i++;
            }
            return r1;
        }

        /* renamed from: generateAndSearchChildren-4C6V_qg, reason: not valid java name */
        public static final boolean m705generateAndSearchChildren4C6V_qg(final FocusTargetNode focusTargetNode, final Rect rect, final int i, final Function1 function1) {
            if (m707searchChildren4C6V_qg(focusTargetNode, rect, i, function1)) {
                return true;
            }
            final FocusTargetNode activeFocusTargetNode = ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode();
            Boolean bool = (Boolean) UStringsKt.m676searchBeyondBoundsOMvw8(focusTargetNode, i, new Function1() { // from class: androidx.compose.ui.focus.TwoDimensionalFocusSearchKt$generateAndSearchChildren$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    BeyondBoundsLayout$BeyondBoundsScope beyondBoundsLayout$BeyondBoundsScope = (BeyondBoundsLayout$BeyondBoundsScope) obj;
                    if (FocusTargetNode.this != ((FocusOwnerImpl) ((AndroidComposeView) HitTestResultKt.requireOwner(focusTargetNode)).getFocusOwner()).getActiveFocusTargetNode()) {
                        return Boolean.TRUE;
                    }
                    boolean m707searchChildren4C6V_qg = Cookie.Companion.m707searchChildren4C6V_qg(focusTargetNode, rect, i, function1);
                    Boolean valueOf = Boolean.valueOf(m707searchChildren4C6V_qg);
                    if (m707searchChildren4C6V_qg || !beyondBoundsLayout$BeyondBoundsScope.getHasMoreContent()) {
                        return valueOf;
                    }
                    return null;
                }
            });
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        public static AutofillIdCompat getAutofillId(View view) {
            if (Build.VERSION.SDK_INT >= 26) {
                return new AutofillIdCompat(Transition.Impl26.getAutofillId(view));
            }
            return null;
        }

        public static float getDistance(EdgeEffect edgeEffect) {
            if (Build.VERSION.SDK_INT >= 31) {
                return EdgeEffectCompat$Api31Impl.getDistance(edgeEffect);
            }
            return 0.0f;
        }

        public static Drawable getDrawable(Context context, int i) {
            return ResourceManagerInternal.get().getDrawable(context, i);
        }

        public static ImageRequest.Builder getImageRequest(Context context, String str, int i, boolean z) {
            if (str == null || str.length() <= 0 || !ImageStrategy.shouldLoadImages()) {
                str = null;
            }
            ImageRequest.Builder builder = new ImageRequest.Builder(context);
            builder.data = str;
            Extras.Key key = ImageRequests_androidKt.transitionFactoryKey;
            builder.errorFactory = new ImageRequests_androidKt$$ExternalSyntheticLambda0(i, 0);
            builder.memoryCacheKey = str;
            builder.diskCacheKey = str;
            if (str == null && !z) {
                return builder;
            }
            builder.placeholderFactory = new ImageRequests_androidKt$$ExternalSyntheticLambda0(i, 3);
            return builder;
        }

        public static float getLegacyControlPoint(String[] strArr, int i) {
            float parseFloat = Float.parseFloat(strArr[i]);
            if (parseFloat >= 0.0f && parseFloat <= 1.0f) {
                return parseFloat;
            }
            throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + parseFloat);
        }

        public static final int indexSegment(int i, int i2) {
            return (i >> i2) & 31;
        }

        /* renamed from: isBetterCandidate-I7lrPNg, reason: not valid java name */
        public static final boolean m706isBetterCandidateI7lrPNg(Rect rect, Rect rect2, Rect rect3, int i) {
            if (!isBetterCandidate_I7lrPNg$isCandidate(i, rect, rect3)) {
                return false;
            }
            if (isBetterCandidate_I7lrPNg$isCandidate(i, rect2, rect3) && !m702beamBeatsI7lrPNg(rect3, rect, rect2, i)) {
                return !m702beamBeatsI7lrPNg(rect3, rect2, rect, i) && isBetterCandidate_I7lrPNg$weightedDistance(i, rect3, rect) < isBetterCandidate_I7lrPNg$weightedDistance(i, rect3, rect2);
            }
            return true;
        }

        public static final boolean isBetterCandidate_I7lrPNg$isCandidate(int i, Rect rect, Rect rect2) {
            if (i == 3) {
                float f = rect2.right;
                float f2 = rect2.left;
                float f3 = rect.right;
                return (f > f3 || f2 >= f3) && f2 > rect.left;
            }
            if (i == 4) {
                float f4 = rect2.left;
                float f5 = rect2.right;
                float f6 = rect.left;
                return (f4 < f6 || f5 <= f6) && f5 < rect.right;
            }
            if (i == 5) {
                float f7 = rect2.bottom;
                float f8 = rect2.top;
                float f9 = rect.bottom;
                return (f7 > f9 || f8 >= f9) && f8 > rect.top;
            }
            if (i != 6) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This function should only be used for 2-D focus search");
                return false;
            }
            float f10 = rect2.top;
            float f11 = rect2.bottom;
            float f12 = rect.top;
            return (f10 < f12 || f11 <= f12) && f11 < rect.bottom;
        }

        public static final long isBetterCandidate_I7lrPNg$weightedDistance(int i, Rect rect, Rect rect2) {
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            if (i == 3) {
                f = rect.left;
                f2 = rect2.right;
            } else if (i == 4) {
                f = rect2.left;
                f2 = rect.right;
            } else if (i == 5) {
                f = rect.top;
                f2 = rect2.bottom;
            } else {
                if (i != 6) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This function should only be used for 2-D focus search");
                    return 0L;
                }
                f = rect2.top;
                f2 = rect.bottom;
            }
            float f6 = f - f2;
            if (f6 < 0.0f) {
                f6 = 0.0f;
            }
            long j = (long) f6;
            if (i == 3 || i == 4) {
                float f7 = rect.top;
                f3 = ((rect.bottom - f7) / 2.0f) + f7;
                f4 = rect2.top;
                f5 = rect2.bottom;
            } else {
                if (i != 5 && i != 6) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("This function should only be used for 2-D focus search");
                    return 0L;
                }
                float f8 = rect.left;
                f3 = ((rect.right - f8) / 2.0f) + f8;
                f4 = rect2.left;
                f5 = rect2.right;
            }
            long j2 = (long) (f3 - (((f5 - f4) / 2.0f) + f4));
            return (j2 * j2) + (13 * j * j);
        }

        public static boolean isLegacyEasingType(String str, String str2) {
            return str.startsWith(str2.concat("(")) && str.endsWith(")");
        }

        public static void launchSafe(ActivityResultLauncher activityResultLauncher, Intent intent, String str, Context context) {
            try {
                activityResultLauncher.launch(intent);
            } catch (ActivityNotFoundException e) {
                Log.w(str, "Unable to launch file/directory picker", e);
                if (context == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Unable to open no file manager alert dialog: Context is null");
                    return;
                }
                String string = Build.VERSION.SDK_INT >= 29 ? context.getString(R.string.no_appropriate_file_manager_message_android_10) : context.getString(R.string.no_appropriate_file_manager_message, context.getString(R.string.downloads_storage_use_saf_title));
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setTitle(R.string.no_app_to_open_intent);
                builder.P.mMessage = string;
                builder.setPositiveButton(R.string.ok, null).show();
            }
        }

        public static void loadAvatar(ImageView imageView, List list) {
            imageView.getClass();
            list.getClass();
            loadImageDefault(imageView, ImageStrategy.choosePreferredImage(list), R.drawable.placeholder_person, true);
        }

        public static Bitmap loadBitmapBlocking(Context context, int i, String str) {
            Image image = ((ImageResult) JobKt.runBlocking(EmptyCoroutineContext.INSTANCE, new ImageLoaders$executeBlocking$1(SingletonImageLoader.get(context), getImageRequest(context, str, i, true).build(), null))).getImage();
            if (image != null) {
                return UriKt.toBitmap$default(image);
            }
            return null;
        }

        public static void loadImageDefault(ImageView imageView, String str, int i, boolean z) {
            Context context = imageView.getContext();
            context.getClass();
            ImageRequest.Builder imageRequest = getImageRequest(context, str, i, z);
            Extras.Key key = ImageRequests_androidKt.transitionFactoryKey;
            imageRequest.target = new ImageViewTarget(imageView);
            ImageRequest build = imageRequest.build();
            Context context2 = imageView.getContext();
            context2.getClass();
            ((RealImageLoader) SingletonImageLoader.get(context2)).enqueue(build);
        }

        public static int mergeGroupField(Object obj, Schema schema, byte[] bArr, int i, int i2, int i3, ArrayDecoders$Registers arrayDecoders$Registers) {
            MessageSchema messageSchema = (MessageSchema) schema;
            int i4 = arrayDecoders$Registers.recursionDepth + 1;
            arrayDecoders$Registers.recursionDepth = i4;
            if (i4 >= 100) {
                throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            }
            int parseMessage = messageSchema.parseMessage(obj, bArr, i, i2, i3, arrayDecoders$Registers);
            arrayDecoders$Registers.recursionDepth--;
            arrayDecoders$Registers.object1 = obj;
            return parseMessage;
        }

        public static int mergeMessageField(Object obj, Schema schema, byte[] bArr, int i, int i2, ArrayDecoders$Registers arrayDecoders$Registers) {
            int i3 = i + 1;
            int i4 = bArr[i];
            if (i4 < 0) {
                i3 = decodeVarint32(i4, bArr, i3, arrayDecoders$Registers);
                i4 = arrayDecoders$Registers.int1;
            }
            int i5 = i3;
            if (i4 < 0 || i4 > i2 - i5) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            int i6 = arrayDecoders$Registers.recursionDepth + 1;
            arrayDecoders$Registers.recursionDepth = i6;
            if (i6 >= 100) {
                throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            }
            int i7 = i5 + i4;
            schema.mergeFrom(obj, bArr, i5, i7, arrayDecoders$Registers);
            arrayDecoders$Registers.recursionDepth--;
            arrayDecoders$Registers.object1 = obj;
            return i7;
        }

        public static float onPullDistance(EdgeEffect edgeEffect, float f, float f2) {
            if (Build.VERSION.SDK_INT >= 31) {
                return EdgeEffectCompat$Api31Impl.onPullDistance(edgeEffect, f, f2);
            }
            edgeEffect.onPull(f, f2);
            return f;
        }

        public static long parseExpires(int i, String str) {
            int dateCharacterOffset = dateCharacterOffset(str, 0, i, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            while (dateCharacterOffset < i) {
                int dateCharacterOffset2 = dateCharacterOffset(str, dateCharacterOffset + 1, i, true);
                matcher.region(dateCharacterOffset, dateCharacterOffset2);
                if (i3 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String group = matcher.group(1);
                    group.getClass();
                    i3 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    group2.getClass();
                    i6 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    group3.getClass();
                    i7 = Integer.parseInt(group3);
                } else if (i4 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String group4 = matcher.group(1);
                    group4.getClass();
                    i4 = Integer.parseInt(group4);
                } else {
                    if (i5 == -1) {
                        Pattern pattern = Cookie.MONTH_PATTERN;
                        if (matcher.usePattern(pattern).matches()) {
                            String group5 = matcher.group(1);
                            group5.getClass();
                            Locale locale = Locale.US;
                            locale.getClass();
                            String lowerCase = group5.toLowerCase(locale);
                            lowerCase.getClass();
                            String pattern2 = pattern.pattern();
                            pattern2.getClass();
                            i5 = StringsKt.indexOf$default(pattern2, lowerCase, 0, 6) / 4;
                        }
                    }
                    if (i2 == -1 && matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                        String group6 = matcher.group(1);
                        group6.getClass();
                        i2 = Integer.parseInt(group6);
                    }
                }
                dateCharacterOffset = dateCharacterOffset(str, dateCharacterOffset2 + 1, i, false);
            }
            if (70 <= i2 && i2 < 100) {
                i2 += 1900;
            }
            if (i2 >= 0 && i2 < 70) {
                i2 += 2000;
            }
            if (i2 < 1601) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
                return 0L;
            }
            if (i5 == -1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
                return 0L;
            }
            if (1 > i4 || i4 >= 32) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
                return 0L;
            }
            if (i3 < 0 || i3 >= 24) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
                return 0L;
            }
            if (i6 < 0 || i6 >= 60) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
                return 0L;
            }
            if (i7 < 0 || i7 >= 60) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
                return 0L;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(_UtilJvmKt.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i2);
            gregorianCalendar.set(2, i5 - 1);
            gregorianCalendar.set(5, i4);
            gregorianCalendar.set(11, i3);
            gregorianCalendar.set(12, i6);
            gregorianCalendar.set(13, i7);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }

        public static String readText$default(File file) {
            Charset charset = Charsets.UTF_8;
            charset.getClass();
            InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
            try {
                String readText = MathKt.readText(inputStreamReader);
                inputStreamReader.close();
                return readText;
            } finally {
            }
        }

        public static final ComposeLifecycleOwner rememberLifecycleOwner(Lifecycle.State state, Composer composer) {
            LifecycleOwner lifecycleOwner = (LifecycleOwner) ((GapComposer) composer).consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
            GapComposer gapComposer = (GapComposer) composer;
            boolean changed = gapComposer.changed(lifecycleOwner);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                rememberedValue = new ComposeLifecycleOwner();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            ComposeLifecycleOwner composeLifecycleOwner = (ComposeLifecycleOwner) rememberedValue;
            boolean changedInstance = gapComposer.changedInstance(composeLifecycleOwner) | gapComposer.changedInstance(lifecycleOwner);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new Recomposer$$ExternalSyntheticLambda4(lifecycleOwner, composeLifecycleOwner, 27);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.DisposableEffect(composeLifecycleOwner, lifecycleOwner, (Function1) rememberedValue2, gapComposer);
            boolean changedInstance2 = gapComposer.changedInstance(composeLifecycleOwner) | gapComposer.changed(state.ordinal());
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new RememberLifecycleOwnerKt$rememberLifecycleOwner$2$1(composeLifecycleOwner, state, null);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.LaunchedEffect(composeLifecycleOwner, state, (Function2) rememberedValue3, gapComposer);
            return composeLifecycleOwner;
        }

        public static int resolveThemeDuration(Context context, int i, int i2) {
            TypedValue resolve = MathKt.resolve(context, i);
            return (resolve == null || resolve.type != 16) ? i2 : resolve.data;
        }

        public static TimeInterpolator resolveThemeInterpolator(Context context, int i, TimeInterpolator timeInterpolator) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(i, typedValue, true)) {
                return timeInterpolator;
            }
            if (typedValue.type != 3) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
                return null;
            }
            String valueOf = String.valueOf(typedValue.string);
            if (!isLegacyEasingType(valueOf, "cubic-bezier") && !isLegacyEasingType(valueOf, "path")) {
                return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
            }
            if (isLegacyEasingType(valueOf, "cubic-bezier")) {
                String[] split = valueOf.substring(13, valueOf.length() - 1).split(",");
                if (split.length == 4) {
                    return new PathInterpolator(getLegacyControlPoint(split, 0), getLegacyControlPoint(split, 1), getLegacyControlPoint(split, 2), getLegacyControlPoint(split, 3));
                }
                DecodeUtils$$ExternalSyntheticBUOutline0.m(split.length, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: ");
                return null;
            }
            if (!isLegacyEasingType(valueOf, "path")) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Invalid motion easing type: ".concat(valueOf));
                return null;
            }
            String m = Owner.CC.m(1, 5, valueOf);
            Path path = new Path();
            try {
                PathParser$PathDataNode.nodesToPath(Okio.createNodesFromPathData(m), path);
                return new PathInterpolator(path);
            } catch (RuntimeException e) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m("Error in parsing ".concat(m), e);
                return null;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:47:0x0078 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0077 A[RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int scanLinkDestination(int r7, java.lang.CharSequence r8) {
            /*
                int r0 = r8.length()
                r1 = -1
                if (r7 < r0) goto L8
                return r1
            L8:
                char r0 = r8.charAt(r7)
                r2 = 92
                r3 = 60
                if (r0 != r3) goto L39
            L12:
                int r7 = r7 + 1
                int r0 = r8.length()
                if (r7 >= r0) goto L38
                char r0 = r8.charAt(r7)
                r4 = 10
                if (r0 == r4) goto L38
                if (r0 == r3) goto L38
                r4 = 62
                if (r0 == r4) goto L35
                if (r0 == r2) goto L2b
                goto L12
            L2b:
                int r0 = r7 + 1
                boolean r4 = kotlin.math.MathKt.isEscapable(r0, r8)
                if (r4 == 0) goto L12
                r7 = r0
                goto L12
            L35:
                int r7 = r7 + 1
                return r7
            L38:
                return r1
            L39:
                r0 = 0
                r3 = r7
            L3b:
                int r4 = r8.length()
                if (r3 >= r4) goto L79
                char r4 = r8.charAt(r3)
                if (r4 == 0) goto L75
                r5 = 32
                if (r4 == r5) goto L75
                if (r4 == r2) goto L69
                r6 = 40
                if (r4 == r6) goto L64
                r5 = 41
                if (r4 == r5) goto L5e
                boolean r4 = java.lang.Character.isISOControl(r4)
                if (r4 == 0) goto L72
                if (r3 == r7) goto L78
                goto L77
            L5e:
                if (r0 != 0) goto L61
                goto L77
            L61:
                int r0 = r0 + (-1)
                goto L72
            L64:
                int r0 = r0 + 1
                if (r0 <= r5) goto L72
                goto L78
            L69:
                int r4 = r3 + 1
                boolean r5 = kotlin.math.MathKt.isEscapable(r4, r8)
                if (r5 == 0) goto L72
                r3 = r4
            L72:
                int r3 = r3 + 1
                goto L3b
            L75:
                if (r3 == r7) goto L78
            L77:
                return r3
            L78:
                return r1
            L79:
                int r7 = r8.length()
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.scanLinkDestination(int, java.lang.CharSequence):int");
        }

        public static int scanLinkLabelContent(int i, CharSequence charSequence) {
            while (i < charSequence.length()) {
                switch (charSequence.charAt(i)) {
                    case Token.SEMI /* 91 */:
                        return -1;
                    case Token.LB /* 92 */:
                        int i2 = i + 1;
                        if (!MathKt.isEscapable(i2, charSequence)) {
                            break;
                        } else {
                            i = i2;
                            break;
                        }
                    case Token.RB /* 93 */:
                        return i;
                }
                i++;
            }
            return charSequence.length();
        }

        public static int scanLinkTitleContent(CharSequence charSequence, int i, char c) {
            while (i < charSequence.length()) {
                char charAt = charSequence.charAt(i);
                if (charAt == '\\') {
                    int i2 = i + 1;
                    if (MathKt.isEscapable(i2, charSequence)) {
                        i = i2;
                        i++;
                    }
                }
                if (charAt == c) {
                    return i;
                }
                if (c == ')' && charAt == '(') {
                    return -1;
                }
                i++;
            }
            return charSequence.length();
        }

        /* renamed from: searchChildren-4C6V_qg, reason: not valid java name */
        public static final boolean m707searchChildren4C6V_qg(FocusTargetNode focusTargetNode, Rect rect, int i, Function1 function1) {
            FocusTargetNode m703findBestCandidate4WY_MpI;
            MutableVector mutableVector = new MutableVector(new FocusTargetNode[16]);
            if (!focusTargetNode.node.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("visitChildren called on an unattached node");
            }
            MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16]);
            Modifier.Node node = focusTargetNode.node;
            Modifier.Node node2 = node.child;
            if (node2 == null) {
                HitTestResultKt.access$addLayoutNodeChildren(mutableVector2, node);
            } else {
                mutableVector2.add(node2);
            }
            while (true) {
                int i2 = mutableVector2.size;
                if (i2 == 0) {
                    break;
                }
                Modifier.Node node3 = (Modifier.Node) mutableVector2.removeAt(i2 - 1);
                if ((node3.aggregateChildKindSet & 1024) == 0) {
                    HitTestResultKt.access$addLayoutNodeChildren(mutableVector2, node3);
                } else {
                    while (true) {
                        if (node3 == null) {
                            break;
                        }
                        if ((node3.kindSet & 1024) != 0) {
                            MutableVector mutableVector3 = null;
                            while (node3 != null) {
                                if (node3 instanceof FocusTargetNode) {
                                    FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                    if (focusTargetNode2.isAttached) {
                                        mutableVector.add(focusTargetNode2);
                                    }
                                } else if ((node3.kindSet & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                        if ((node4.kindSet & 1024) != 0) {
                                            i3++;
                                            if (i3 == 1) {
                                                node3 = node4;
                                            } else {
                                                if (mutableVector3 == null) {
                                                    mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node3 != null) {
                                                    mutableVector3.add(node3);
                                                    node3 = null;
                                                }
                                                mutableVector3.add(node4);
                                            }
                                        }
                                    }
                                    if (i3 == 1) {
                                    }
                                }
                                node3 = HitTestResultKt.access$pop(mutableVector3);
                            }
                        } else {
                            node3 = node3.child;
                        }
                    }
                }
            }
            while (mutableVector.size != 0 && (m703findBestCandidate4WY_MpI = m703findBestCandidate4WY_MpI(mutableVector, rect, i)) != null) {
                if (m703findBestCandidate4WY_MpI.fetchFocusProperties$ui().canFocus) {
                    return ((Boolean) function1.invoke(m703findBestCandidate4WY_MpI)).booleanValue();
                }
                if (m705generateAndSearchChildren4C6V_qg(m703findBestCandidate4WY_MpI, rect, i, function1)) {
                    return true;
                }
                mutableVector.remove(m703findBestCandidate4WY_MpI);
            }
            return false;
        }

        public static byte[] toByteArrayInternalV1(Data data) {
            data.getClass();
            HashMap hashMap = data.values;
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    dataOutputStream.writeShort(-21521);
                    dataOutputStream.writeShort(1);
                    dataOutputStream.writeInt(hashMap.size());
                    for (Map.Entry entry : hashMap.entrySet()) {
                        toByteArrayInternalV1$writeEntry(dataOutputStream, (String) entry.getKey(), entry.getValue());
                    }
                    dataOutputStream.flush();
                    if (dataOutputStream.size() > 10240) {
                        throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    dataOutputStream.close();
                    byteArray.getClass();
                    return byteArray;
                } finally {
                }
            } catch (IOException e) {
                Logger$LogcatLogger.get().error(Data_Kt.TAG, "Error in Data#toByteArray: ", e);
                return new byte[0];
            }
        }

        public static final void toByteArrayInternalV1$writeEntry(DataOutputStream dataOutputStream, String str, Object obj) {
            int i;
            if (obj == null) {
                dataOutputStream.writeByte(0);
            } else if (obj instanceof Boolean) {
                dataOutputStream.writeByte(1);
                dataOutputStream.writeBoolean(((Boolean) obj).booleanValue());
            } else if (obj instanceof Byte) {
                dataOutputStream.writeByte(2);
                dataOutputStream.writeByte(((Number) obj).byteValue());
            } else if (obj instanceof Integer) {
                dataOutputStream.writeByte(3);
                dataOutputStream.writeInt(((Number) obj).intValue());
            } else if (obj instanceof Long) {
                dataOutputStream.writeByte(4);
                dataOutputStream.writeLong(((Number) obj).longValue());
            } else if (obj instanceof Float) {
                dataOutputStream.writeByte(5);
                dataOutputStream.writeFloat(((Number) obj).floatValue());
            } else if (obj instanceof Double) {
                dataOutputStream.writeByte(6);
                dataOutputStream.writeDouble(((Number) obj).doubleValue());
            } else if (obj instanceof String) {
                dataOutputStream.writeByte(7);
                dataOutputStream.writeUTF((String) obj);
            } else {
                if (!(obj instanceof Object[])) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m$2(Reflection.getOrCreateKotlinClass(obj.getClass()).getSimpleName(), "Unsupported value type ");
                    return;
                }
                Object[] objArr = (Object[]) obj;
                ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(objArr.getClass());
                if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Boolean[].class))) {
                    i = 8;
                } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Byte[].class))) {
                    i = 9;
                } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Integer[].class))) {
                    i = 10;
                } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Long[].class))) {
                    i = 11;
                } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Float[].class))) {
                    i = 12;
                } else if (orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(Double[].class))) {
                    i = 13;
                } else {
                    if (!orCreateKotlinClass.equals(Reflection.getOrCreateKotlinClass(String[].class))) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m$2(Reflection.getOrCreateKotlinClass(objArr.getClass()).getQualifiedName(), "Unsupported value type ");
                        return;
                    }
                    i = 14;
                }
                dataOutputStream.writeByte(i);
                dataOutputStream.writeInt(objArr.length);
                for (Object obj2 : objArr) {
                    if (i == 8) {
                        Boolean bool = obj2 instanceof Boolean ? (Boolean) obj2 : null;
                        dataOutputStream.writeBoolean(bool != null ? bool.booleanValue() : false);
                    } else if (i == 9) {
                        Byte b = obj2 instanceof Byte ? (Byte) obj2 : null;
                        dataOutputStream.writeByte(b != null ? b.byteValue() : (byte) 0);
                    } else if (i == 10) {
                        Integer num = obj2 instanceof Integer ? (Integer) obj2 : null;
                        dataOutputStream.writeInt(num != null ? num.intValue() : 0);
                    } else if (i == 11) {
                        Long l = obj2 instanceof Long ? (Long) obj2 : null;
                        dataOutputStream.writeLong(l != null ? l.longValue() : 0L);
                    } else if (i == 12) {
                        Float f = obj2 instanceof Float ? (Float) obj2 : null;
                        dataOutputStream.writeFloat(f != null ? f.floatValue() : 0.0f);
                    } else if (i == 13) {
                        Double d = obj2 instanceof Double ? (Double) obj2 : null;
                        dataOutputStream.writeDouble(d != null ? d.doubleValue() : 0.0d);
                    } else if (i == 14) {
                        String str2 = obj2 instanceof String ? (String) obj2 : null;
                        if (str2 == null) {
                            str2 = "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d";
                        }
                        dataOutputStream.writeUTF(str2);
                    }
                }
            }
            dataOutputStream.writeUTF(str);
        }

        /* renamed from: toSize-ozmzZPI, reason: not valid java name */
        public static final long m708toSizeozmzZPI(long j) {
            return (Float.floatToRawIntBits((int) (j & 4294967295L)) & 4294967295L) | (Float.floatToRawIntBits((int) (j >> 32)) << 32);
        }

        /* renamed from: twoDimensionalFocusSearch-sMXa3k8, reason: not valid java name */
        public static final Boolean m709twoDimensionalFocusSearchsMXa3k8(FocusTargetNode focusTargetNode, int i, Rect rect, FocusOwnerImpl$focusSearch$1 focusOwnerImpl$focusSearch$1) {
            int ordinal = focusTargetNode.getFocusState().ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    FocusTargetNode activeChild = Options.Companion.getActiveChild(focusTargetNode);
                    if (activeChild == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("ActiveParent must have a focusedChild");
                        return null;
                    }
                    int ordinal2 = activeChild.getFocusState().ordinal();
                    if (ordinal2 != 0) {
                        if (ordinal2 == 1) {
                            Boolean m709twoDimensionalFocusSearchsMXa3k8 = m709twoDimensionalFocusSearchsMXa3k8(activeChild, i, rect, focusOwnerImpl$focusSearch$1);
                            if (!Intrinsics.areEqual(m709twoDimensionalFocusSearchsMXa3k8, Boolean.FALSE)) {
                                return m709twoDimensionalFocusSearchsMXa3k8;
                            }
                            if (rect == null) {
                                if (activeChild.getFocusState() != FocusStateImpl.ActiveParent) {
                                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Searching for active node in inactive hierarchy");
                                    return null;
                                }
                                FocusTargetNode findActiveFocusNode = Options.Companion.findActiveFocusNode(activeChild);
                                if (findActiveFocusNode == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("ActiveParent must have a focusedChild");
                                    return null;
                                }
                                rect = Options.Companion.focusRect(findActiveFocusNode);
                            }
                            return Boolean.valueOf(m705generateAndSearchChildren4C6V_qg(focusTargetNode, rect, i, focusOwnerImpl$focusSearch$1));
                        }
                        if (ordinal2 != 2) {
                            if (ordinal2 != 3) {
                                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                                return null;
                            }
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("ActiveParent must have a focusedChild");
                            return null;
                        }
                    }
                    if (rect == null) {
                        rect = Options.Companion.focusRect(activeChild);
                    }
                    return Boolean.valueOf(m705generateAndSearchChildren4C6V_qg(focusTargetNode, rect, i, focusOwnerImpl$focusSearch$1));
                }
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        return focusTargetNode.fetchFocusProperties$ui().canFocus ? (Boolean) focusOwnerImpl$focusSearch$1.invoke(focusTargetNode) : rect == null ? Boolean.valueOf(m704findChildCorrespondingToFocusEnterOMvw8(focusTargetNode, i, focusOwnerImpl$focusSearch$1)) : Boolean.valueOf(m707searchChildren4C6V_qg(focusTargetNode, rect, i, focusOwnerImpl$focusSearch$1));
                    }
                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
            }
            return Boolean.valueOf(m704findChildCorrespondingToFocusEnterOMvw8(focusTargetNode, i, focusOwnerImpl$focusSearch$1));
        }

        public static void writeText$default(File file, String str) {
            Charset charset = Charsets.UTF_8;
            str.getClass();
            charset.getClass();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                writeTextImpl(fileOutputStream, str, charset);
                fileOutputStream.close();
            } finally {
            }
        }

        public static final void writeTextImpl(FileOutputStream fileOutputStream, String str, Charset charset) {
            str.getClass();
            if (str.length() < 16384) {
                byte[] bytes = str.getBytes(charset);
                bytes.getClass();
                fileOutputStream.write(bytes);
                return;
            }
            CharsetEncoder newEncoder = charset.newEncoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            CharsetEncoder onUnmappableCharacter = newEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
            CharBuffer allocate = CharBuffer.allocate(8192);
            onUnmappableCharacter.getClass();
            ByteBuffer allocate2 = ByteBuffer.allocate(8192 * ((int) Math.ceil(onUnmappableCharacter.maxBytesPerChar())));
            allocate2.getClass();
            int i = 0;
            int i2 = 0;
            while (i < str.length()) {
                int min = Math.min(8192 - i2, str.length() - i);
                int i3 = i + min;
                char[] array = allocate.array();
                array.getClass();
                str.getChars(i, i3, array, i2);
                allocate.limit(min + i2);
                i2 = 1;
                if (!onUnmappableCharacter.encode(allocate, allocate2, i3 == str.length()).isUnderflow()) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Check failed.");
                    return;
                }
                fileOutputStream.write(allocate2.array(), 0, allocate2.position());
                if (allocate.position() != allocate.limit()) {
                    allocate.put(0, allocate.get());
                } else {
                    i2 = 0;
                }
                allocate.clear();
                allocate2.clear();
                i = i3;
            }
        }

        public LinkHandler fromUrl(String str, String str2) {
            Objects.requireNonNull(str, "URL cannot be null");
            if (!onAcceptUrl(str)) {
                throw new ParsingException("URL not accepted: ".concat(str));
            }
            String id = getId(str);
            return new LinkHandler(str, getUrl(id, str2), id);
        }

        public abstract String getId(String str);

        public abstract String getUrl(String str);

        public String getUrl(String str, String str2) {
            return getUrl(str);
        }

        public abstract boolean onAcceptUrl(String str);

        public abstract int parallelism();

        public boolean validate(Subscriber[] subscriberArr) {
            Objects.requireNonNull(subscriberArr, "subscribers is null");
            int parallelism = parallelism();
            if (subscriberArr.length == parallelism) {
                return true;
            }
            StringBuilder m179m = Modifier.CC.m179m("parallelism = ", parallelism, ", subscribers = ");
            m179m.append(subscriberArr.length);
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException(m179m.toString());
            for (Subscriber subscriber : subscriberArr) {
                EmptySubscription.error(illegalArgumentException, subscriber);
            }
            return false;
        }

        public LinkHandler fromUrl(String str) {
            if (!Utils.isNullOrEmpty(str)) {
                String followGoogleRedirectIfNeeded = Utils.followGoogleRedirectIfNeeded(str);
                return fromUrl(followGoogleRedirectIfNeeded, Utils.getBaseUrl(followGoogleRedirectIfNeeded));
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("The url is null or empty");
            return null;
        }

        public static final KSerializer findPolymorphicSerializer(AbstractPolymorphicSerializer abstractPolymorphicSerializer, CompositeDecoder compositeDecoder, String str) {
            abstractPolymorphicSerializer.getClass();
            KSerializer findPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(compositeDecoder, str);
            if (findPolymorphicSerializerOrNull != null) {
                return findPolymorphicSerializerOrNull;
            }
            Platform_commonKt.throwSubtypeNotRegistered(str, abstractPolymorphicSerializer.getBaseClass());
            throw null;
        }

        public static int decodeVarint32(byte[] bArr, int i, ArrayDecoders$Registers arrayDecoders$Registers) {
            int i2 = i + 1;
            byte b = bArr[i];
            if (b >= 0) {
                arrayDecoders$Registers.int1 = b;
                return i2;
            }
            return decodeVarint32(b, bArr, i2, arrayDecoders$Registers);
        }
    }
}
