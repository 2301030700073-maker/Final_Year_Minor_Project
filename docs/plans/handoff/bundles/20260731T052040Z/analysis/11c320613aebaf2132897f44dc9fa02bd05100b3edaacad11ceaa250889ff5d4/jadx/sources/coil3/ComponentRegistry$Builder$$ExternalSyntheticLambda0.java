package coil3;

import androidx.work.impl.constraints.controllers.BaseConstraintController;
import androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1;
import java.io.IOException;
import java.util.LinkedHashSet;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import org.commonmark.node.Node;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComponentRegistry$Builder$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ ComponentRegistry$Builder$$ExternalSyntheticLambda0(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    private final Object invoke$androidx$work$impl$constraints$controllers$BaseConstraintController$track$1$$ExternalSyntheticLambda0() {
        BaseConstraintController baseConstraintController = (BaseConstraintController) this.f$0;
        BaseConstraintController$track$1$listener$1 baseConstraintController$track$1$listener$1 = (BaseConstraintController$track$1$listener$1) this.f$1;
        Node node = baseConstraintController.tracker;
        node.getClass();
        synchronized (node.lastChild) {
            if (((LinkedHashSet) node.prev).remove(baseConstraintController$track$1$listener$1) && ((LinkedHashSet) node.prev).isEmpty()) {
                node.stopTracking();
            }
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$okhttp3$internal$http2$Http2Connection$ReaderRunnable$$ExternalSyntheticLambda2() {
        int i;
        long initialWindowSize;
        Http2Stream[] http2StreamArr;
        Http2Connection.ReaderRunnable readerRunnable = (Http2Connection.ReaderRunnable) this.f$0;
        Settings settings = (Settings) this.f$1;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Http2Connection http2Connection = (Http2Connection) readerRunnable.this$0;
        synchronized (http2Connection.writer) {
            synchronized (http2Connection) {
                try {
                    Settings settings2 = http2Connection.peerSettings;
                    Settings settings3 = new Settings();
                    settings2.getClass();
                    for (int i2 = 0; i2 < 10; i2++) {
                        if (((1 << i2) & settings2.set) != 0) {
                            settings3.set(i2, settings2.values[i2]);
                        }
                    }
                    for (int i3 = 0; i3 < 10; i3++) {
                        if (((1 << i3) & settings.set) != 0) {
                            settings3.set(i3, settings.values[i3]);
                        }
                    }
                    ref$ObjectRef.element = settings3;
                    initialWindowSize = settings3.getInitialWindowSize() - settings2.getInitialWindowSize();
                    if (initialWindowSize != 0 && !http2Connection.streams.isEmpty()) {
                        http2StreamArr = (Http2Stream[]) http2Connection.streams.values().toArray(new Http2Stream[0]);
                        Settings settings4 = (Settings) ref$ObjectRef.element;
                        settings4.getClass();
                        http2Connection.peerSettings = settings4;
                        TaskQueue.execute$default(http2Connection.settingsListenerQueue, http2Connection.connectionName + " onSettings", new ComponentRegistry$Builder$$ExternalSyntheticLambda0(http2Connection, ref$ObjectRef, 23));
                    }
                    http2StreamArr = null;
                    Settings settings42 = (Settings) ref$ObjectRef.element;
                    settings42.getClass();
                    http2Connection.peerSettings = settings42;
                    TaskQueue.execute$default(http2Connection.settingsListenerQueue, http2Connection.connectionName + " onSettings", new ComponentRegistry$Builder$$ExternalSyntheticLambda0(http2Connection, ref$ObjectRef, 23));
                } catch (Throwable th) {
                    throw th;
                }
            }
            try {
                http2Connection.writer.applyAndAckSettings((Settings) ref$ObjectRef.element);
            } catch (IOException e) {
                ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                http2Connection.close$okhttp(errorCode, errorCode, e);
            }
        }
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                synchronized (http2Stream) {
                    http2Stream.writeBytesMaximum += initialWindowSize;
                    if (initialWindowSize > 0) {
                        http2Stream.notifyAll();
                    }
                }
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:154:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03d6  */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke() {
        /*
            Method dump skipped, instructions count: 1330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0.invoke():java.lang.Object");
    }
}
