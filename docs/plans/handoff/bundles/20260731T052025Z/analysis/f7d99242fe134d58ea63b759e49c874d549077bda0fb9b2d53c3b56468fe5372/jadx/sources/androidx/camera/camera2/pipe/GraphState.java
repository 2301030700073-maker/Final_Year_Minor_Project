package androidx.camera.camera2.pipe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class GraphState {
    public final String name;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class GraphStateError extends GraphState {
        public final int cameraError;
        public final boolean willAttemptRetry;

        public GraphStateError(int i, boolean z) {
            super("GRAPH_ERROR");
            this.cameraError = i;
            this.willAttemptRetry = z;
        }

        @Override // androidx.camera.camera2.pipe.GraphState
        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.name);
            sb.append("(cameraError=");
            sb.append((Object) CameraError.m33toStringimpl(this.cameraError));
            sb.append(", willAttemptRetry=");
            return CameraDevices$CC.m(sb, this.willAttemptRetry, ')');
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class GraphStateStarted extends GraphState {
        public static final GraphStateStarted INSTANCE = new GraphStateStarted("GRAPH_STARTED");
        public static final GraphStateStarted INSTANCE$1 = new GraphStateStarted("GRAPH_STARTING");
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class GraphStateStopped extends GraphState {
        public static final GraphStateStopped INSTANCE = new GraphStateStopped("GRAPH_STOPPED");
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class GraphStateStopping extends GraphState {
        public static final GraphStateStopping INSTANCE = new GraphStateStopping("GRAPH_STOPPING");
    }

    public GraphState(String str) {
        this.name = str;
    }

    public String toString() {
        return this.name;
    }
}
