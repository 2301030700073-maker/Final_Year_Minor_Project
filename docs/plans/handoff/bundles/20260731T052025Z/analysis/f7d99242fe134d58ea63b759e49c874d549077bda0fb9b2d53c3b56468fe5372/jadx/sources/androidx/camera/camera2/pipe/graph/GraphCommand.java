package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.Request;
import java.util.Map;
import org.apache.james.mime4j.stream.RawField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface GraphCommand {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Capture implements GraphCommand {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Listeners implements GraphCommand {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Parameters implements GraphCommand {
        public final Map graph3AParameters;
        public final Map graphParameters;

        public Parameters(Map map, Map map2) {
            map.getClass();
            map2.getClass();
            this.graphParameters = map;
            this.graph3AParameters = map2;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Repeat implements GraphCommand {
        public final Request request;

        public Repeat(Request request) {
            request.getClass();
            this.request = request;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RequestProcessor implements GraphCommand {

        /* renamed from: new, reason: not valid java name */
        public final RawField f0new;
        public final RawField old;

        public RequestProcessor(RawField rawField, RawField rawField2) {
            this.old = rawField;
            this.f0new = rawField2;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Stop implements GraphCommand {
        public static final Stop INSTANCE$1 = new Stop();
        public static final Stop INSTANCE$2 = new Stop();
        public static final Stop INSTANCE$3 = new Stop();
        public static final Stop INSTANCE = new Stop();
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Trigger implements GraphCommand {
        public final Map triggerParameters;

        public Trigger(Map map) {
            map.getClass();
            this.triggerParameters = map;
        }
    }
}
