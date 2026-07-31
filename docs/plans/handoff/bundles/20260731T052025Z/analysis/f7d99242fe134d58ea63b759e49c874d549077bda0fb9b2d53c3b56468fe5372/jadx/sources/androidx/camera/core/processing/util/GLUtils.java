package androidx.camera.core.processing.util;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.Log;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.Config;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class GLUtils {
    public static final String DEFAULT_VERTEX_SHADER;
    public static final String HDR_VERTEX_SHADER;
    public static final AutoValue_OutputSurface NO_OUTPUT_SURFACE;
    public static final AnonymousClass1 SHADER_PROVIDER_DEFAULT;
    public static final AnonymousClass1 SHADER_PROVIDER_HDR_DEFAULT;
    public static final AnonymousClass1 SHADER_PROVIDER_HDR_YUV;
    public static final FloatBuffer TEX_BUF;
    public static final FloatBuffer VERTEX_BUF;
    public static final int[] EMPTY_ATTRIBS = {12344};
    public static final int[] HLG_SURFACE_ATTRIBS = {12445, 13632, 12344};

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.core.processing.util.GLUtils$1, reason: invalid class name */
    public final class AnonymousClass1 {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BlankShaderProgram extends Program2D {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class InputFormat {
        public static final /* synthetic */ InputFormat[] $VALUES;
        public static final InputFormat DEFAULT;
        public static final InputFormat UNKNOWN;
        public static final InputFormat YUV;

        static {
            InputFormat inputFormat = new InputFormat("UNKNOWN", 0);
            UNKNOWN = inputFormat;
            InputFormat inputFormat2 = new InputFormat("DEFAULT", 1);
            DEFAULT = inputFormat2;
            InputFormat inputFormat3 = new InputFormat("YUV", 2);
            YUV = inputFormat3;
            $VALUES = new InputFormat[]{inputFormat, inputFormat2, inputFormat3};
        }

        public static InputFormat valueOf(String str) {
            return (InputFormat) Enum.valueOf(InputFormat.class, str);
        }

        public static InputFormat[] values() {
            return (InputFormat[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Program2D {
        public final int mProgramHandle;
        public int mTransMatrixLoc = -1;
        public int mAlphaScaleLoc = -1;
        public int mPositionLoc = -1;

        /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x007f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Program2D(java.lang.String r8, java.lang.String r9) {
            /*
                r7 = this;
                java.lang.String r0 = "glAttachShader"
                java.lang.String r1 = "Could not link program: "
                r7.<init>()
                r2 = -1
                r7.mTransMatrixLoc = r2
                r7.mAlphaScaleLoc = r2
                r7.mPositionLoc = r2
                r3 = 35633(0x8b31, float:4.9932E-41)
                int r8 = androidx.camera.core.processing.util.GLUtils.loadShader(r8, r3)     // Catch: java.lang.IllegalArgumentException -> L6d java.lang.IllegalStateException -> L71
                r3 = 35632(0x8b30, float:4.9931E-41)
                int r9 = androidx.camera.core.processing.util.GLUtils.loadShader(r9, r3)     // Catch: java.lang.IllegalArgumentException -> L67 java.lang.IllegalStateException -> L6b
                int r3 = android.opengl.GLES20.glCreateProgram()     // Catch: java.lang.IllegalArgumentException -> L62 java.lang.IllegalStateException -> L65
                java.lang.String r4 = "glCreateProgram"
                androidx.camera.core.processing.util.GLUtils.checkGlErrorOrThrow(r4)     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                android.opengl.GLES20.glAttachShader(r3, r8)     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                androidx.camera.core.processing.util.GLUtils.checkGlErrorOrThrow(r0)     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                android.opengl.GLES20.glAttachShader(r3, r9)     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                androidx.camera.core.processing.util.GLUtils.checkGlErrorOrThrow(r0)     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                android.opengl.GLES20.glLinkProgram(r3)     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                r0 = 1
                int[] r4 = new int[r0]     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                r5 = 35714(0x8b82, float:5.0046E-41)
                r6 = 0
                android.opengl.GLES20.glGetProgramiv(r3, r5, r4, r6)     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                r4 = r4[r6]     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                if (r4 != r0) goto L4c
                r7.mProgramHandle = r3     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                r7.loadLocations$1()
                return
            L48:
                r7 = move-exception
                goto L73
            L4a:
                r7 = move-exception
                goto L73
            L4c:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                r0.<init>(r1)     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                java.lang.String r1 = android.opengl.GLES20.glGetProgramInfoLog(r3)     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                r0.append(r1)     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                java.lang.String r0 = r0.toString()     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                r7.<init>(r0)     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
                throw r7     // Catch: java.lang.IllegalArgumentException -> L48 java.lang.IllegalStateException -> L4a
            L62:
                r7 = move-exception
            L63:
                r3 = r2
                goto L73
            L65:
                r7 = move-exception
                goto L63
            L67:
                r7 = move-exception
            L68:
                r9 = r2
            L69:
                r3 = r9
                goto L73
            L6b:
                r7 = move-exception
                goto L68
            L6d:
                r7 = move-exception
            L6e:
                r8 = r2
                r9 = r8
                goto L69
            L71:
                r7 = move-exception
                goto L6e
            L73:
                if (r8 == r2) goto L78
                android.opengl.GLES20.glDeleteShader(r8)
            L78:
                if (r9 == r2) goto L7d
                android.opengl.GLES20.glDeleteShader(r9)
            L7d:
                if (r3 == r2) goto L82
                android.opengl.GLES20.glDeleteProgram(r3)
            L82:
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.processing.util.GLUtils.Program2D.<init>(java.lang.String, java.lang.String):void");
        }

        public final void loadLocations$1() {
            int i = this.mProgramHandle;
            int glGetAttribLocation = GLES20.glGetAttribLocation(i, "aPosition");
            this.mPositionLoc = glGetAttribLocation;
            GLUtils.checkLocationOrThrow("aPosition", glGetAttribLocation);
            int glGetUniformLocation = GLES20.glGetUniformLocation(i, "uTransMatrix");
            this.mTransMatrixLoc = glGetUniformLocation;
            GLUtils.checkLocationOrThrow("uTransMatrix", glGetUniformLocation);
            int glGetUniformLocation2 = GLES20.glGetUniformLocation(i, "uAlphaScale");
            this.mAlphaScaleLoc = glGetUniformLocation2;
            GLUtils.checkLocationOrThrow("uAlphaScale", glGetUniformLocation2);
        }

        public void use() {
            GLES20.glUseProgram(this.mProgramHandle);
            GLUtils.checkGlErrorOrThrow("glUseProgram");
            GLES20.glEnableVertexAttribArray(this.mPositionLoc);
            GLUtils.checkGlErrorOrThrow("glEnableVertexAttribArray");
            GLES20.glVertexAttribPointer(this.mPositionLoc, 2, 5126, false, 0, (Buffer) GLUtils.VERTEX_BUF);
            GLUtils.checkGlErrorOrThrow("glVertexAttribPointer");
            float[] fArr = new float[16];
            Matrix.setIdentityM(fArr, 0);
            GLES20.glUniformMatrix4fv(this.mTransMatrixLoc, 1, false, fArr, 0);
            GLUtils.checkGlErrorOrThrow("glUniformMatrix4fv");
            GLES20.glUniform1f(this.mAlphaScaleLoc, 1.0f);
            GLUtils.checkGlErrorOrThrow("glUniform1f");
        }
    }

    static {
        Locale locale = Locale.US;
        DEFAULT_VERTEX_SHADER = "uniform mat4 uTexMatrix;\nuniform mat4 uTransMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uTransMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n";
        HDR_VERTEX_SHADER = "#version 300 es\nin vec4 aPosition;\nin vec4 aTextureCoord;\nuniform mat4 uTexMatrix;\nuniform mat4 uTransMatrix;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uTransMatrix * aPosition;\n  vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n";
        SHADER_PROVIDER_DEFAULT = new AnonymousClass1(0);
        SHADER_PROVIDER_HDR_DEFAULT = new AnonymousClass1(1);
        SHADER_PROVIDER_HDR_YUV = new AnonymousClass1(2);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(32);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        asFloatBuffer.put(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f});
        asFloatBuffer.position(0);
        VERTEX_BUF = asFloatBuffer;
        ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(32);
        allocateDirect2.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer2 = allocateDirect2.asFloatBuffer();
        asFloatBuffer2.put(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f});
        asFloatBuffer2.position(0);
        TEX_BUF = asFloatBuffer2;
        NO_OUTPUT_SURFACE = new AutoValue_OutputSurface(EGL14.EGL_NO_SURFACE, 0, 0);
    }

    public static void checkEglErrorOrThrow(String str) {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            return;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m((Object) Integer.toHexString(eglGetError), Config.CC.m(str, ": EGL error: 0x"));
    }

    public static void checkGlErrorOrThrow(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError == 0) {
            return;
        }
        DBUtil$$ExternalSyntheticBUOutline0.m((Object) Integer.toHexString(glGetError), Config.CC.m(str, ": GL error 0x"));
    }

    public static void checkGlThreadOrThrow(Thread thread) {
        RelationUtil.checkState("Method call must be called on the GL thread.", thread == Thread.currentThread());
    }

    public static void checkInitializedOrThrow(AtomicBoolean atomicBoolean, boolean z) {
        RelationUtil.checkState(z ? "OpenGlRenderer is not initialized" : "OpenGlRenderer is already initialized", z == atomicBoolean.get());
    }

    public static void checkLocationOrThrow(String str, int i) {
        if (i >= 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m("Unable to locate '", str, "' in program"));
    }

    public static int[] chooseSurfaceAttrib(String str, DynamicRange dynamicRange) {
        int i = dynamicRange.mEncoding;
        int[] iArr = EMPTY_ATTRIBS;
        if (i == 3) {
            if (str.contains("EGL_EXT_gl_colorspace_bt2020_hlg")) {
                return HLG_SURFACE_ATTRIBS;
            }
            Utf8.SafeProcessor.w("GLUtils", "Dynamic range uses HLG encoding, but device does not support EGL_EXT_gl_colorspace_bt2020_hlg.Fallback to default colorspace.");
        }
        return iArr;
    }

    public static HashMap createPrograms(DynamicRange dynamicRange) {
        Object samplerShaderProgram;
        InputFormat inputFormat;
        Map map = Collections.EMPTY_MAP;
        HashMap hashMap = new HashMap();
        InputFormat[] values = InputFormat.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            InputFormat inputFormat2 = values[i];
            AnonymousClass1 anonymousClass1 = (AnonymousClass1) map.get(inputFormat2);
            if (anonymousClass1 != null) {
                samplerShaderProgram = new SamplerShaderProgram(dynamicRange, anonymousClass1);
            } else if (inputFormat2 == InputFormat.YUV || inputFormat2 == (inputFormat = InputFormat.DEFAULT)) {
                samplerShaderProgram = new SamplerShaderProgram(dynamicRange, inputFormat2);
            } else {
                RelationUtil.checkState("Unhandled input format: " + inputFormat2, inputFormat2 == InputFormat.UNKNOWN);
                if (dynamicRange.is10BitHdr()) {
                    samplerShaderProgram = new BlankShaderProgram("uniform mat4 uTransMatrix;\nattribute vec4 aPosition;\nvoid main() {\n    gl_Position = uTransMatrix * aPosition;\n}\n", "precision mediump float;\nuniform float uAlphaScale;\nvoid main() {\n    gl_FragColor = vec4(0.0, 0.0, 0.0, uAlphaScale);\n}\n");
                } else {
                    AnonymousClass1 anonymousClass12 = (AnonymousClass1) map.get(inputFormat);
                    samplerShaderProgram = anonymousClass12 != null ? new SamplerShaderProgram(dynamicRange, anonymousClass12) : new SamplerShaderProgram(dynamicRange, inputFormat);
                }
            }
            Log.d("GLUtils", "Shader program for input format " + inputFormat2 + " created: " + samplerShaderProgram);
            hashMap.put(inputFormat2, samplerShaderProgram);
        }
        return hashMap;
    }

    public static int createTexture() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        checkGlErrorOrThrow("glGenTextures");
        int i = iArr[0];
        GLES20.glBindTexture(36197, i);
        checkGlErrorOrThrow("glBindTexture " + i);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        checkGlErrorOrThrow("glTexParameter");
        return i;
    }

    public static EGLSurface createWindowSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Surface surface, int[] iArr) {
        EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(eGLDisplay, eGLConfig, surface, iArr, 0);
        checkEglErrorOrThrow("eglCreateWindowSurface");
        if (eglCreateWindowSurface != null) {
            return eglCreateWindowSurface;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("surface was null");
        return null;
    }

    public static String getGlVersionNumber() {
        Matcher matcher = Pattern.compile("OpenGL ES ([0-9]+)\\.([0-9]+).*").matcher(GLES20.glGetString(7938));
        if (!matcher.find()) {
            return "0.0";
        }
        String group = matcher.group(1);
        group.getClass();
        String group2 = matcher.group(2);
        group2.getClass();
        return Config.CC.m(group, ".", group2);
    }

    public static int loadShader(String str, int i) {
        int glCreateShader = GLES20.glCreateShader(i);
        checkGlErrorOrThrow("glCreateShader type=" + i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        Utf8.SafeProcessor.w("GLUtils", "Could not compile shader: " + str);
        String glGetShaderInfoLog = GLES20.glGetShaderInfoLog(glCreateShader);
        GLES20.glDeleteShader(glCreateShader);
        throw new IllegalStateException("Could not compile shader type " + i + ":" + glGetShaderInfoLog);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SamplerShaderProgram extends Program2D {
        public final int mSamplerLoc;
        public final int mTexCoordLoc;
        public final int mTexMatrixLoc;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public SamplerShaderProgram(androidx.camera.core.DynamicRange r3, androidx.camera.core.processing.util.GLUtils.AnonymousClass1 r4) {
            /*
                r2 = this;
                java.lang.String r0 = "sTexture"
                boolean r3 = r3.is10BitHdr()
                if (r3 == 0) goto Lb
                java.lang.String r3 = androidx.camera.core.processing.util.GLUtils.HDR_VERTEX_SHADER
                goto Ld
            Lb:
                java.lang.String r3 = androidx.camera.core.processing.util.GLUtils.DEFAULT_VERTEX_SHADER
            Ld:
                java.lang.String r1 = "vTextureCoord"
                int r4 = r4.$r8$classId     // Catch: java.lang.Throwable -> L66
                switch(r4) {
                    case 0: goto L1f;
                    case 1: goto L1a;
                    default: goto L15;
                }     // Catch: java.lang.Throwable -> L66
            L15:
                java.util.Locale r4 = java.util.Locale.US     // Catch: java.lang.Throwable -> L66
                java.lang.String r4 = "#version 300 es\n#extension GL_EXT_YUV_target : require\nprecision mediump float;\nuniform __samplerExternal2DY2YEXT sTexture;\nuniform float uAlphaScale;\nin vec2 vTextureCoord;\nout vec4 outColor;\n\nvec3 yuvToRgb(vec3 yuv) {\n  const vec3 yuvOffset = vec3(0.0625, 0.5, 0.5);\n  const mat3 yuvToRgbColorMat = mat3(\n    1.1689f, 1.1689f, 1.1689f,\n    0.0000f, -0.1881f, 2.1502f,\n    1.6853f, -0.6530f, 0.0000f\n  );\n  return clamp(yuvToRgbColorMat * (yuv - yuvOffset), 0.0, 1.0);\n}\n\nvoid main() {\n  vec3 srcYuv = texture(sTexture, vTextureCoord).xyz;\n  vec3 srcRgb = yuvToRgb(srcYuv);\n  outColor = vec4(srcRgb, uAlphaScale);\n}"
                goto L23
            L1a:
                java.util.Locale r4 = java.util.Locale.US     // Catch: java.lang.Throwable -> L66
                java.lang.String r4 = "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nuniform float uAlphaScale;\nin vec2 vTextureCoord;\nout vec4 outColor;\n\nvoid main() {\n  vec4 src = texture(sTexture, vTextureCoord);\n  outColor = vec4(src.rgb, src.a * uAlphaScale);\n}"
                goto L23
            L1f:
                java.util.Locale r4 = java.util.Locale.US     // Catch: java.lang.Throwable -> L66
                java.lang.String r4 = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nuniform float uAlphaScale;\nvoid main() {\n    vec4 src = texture2D(sTexture, vTextureCoord);\n    gl_FragColor = vec4(src.rgb, src.a * uAlphaScale);\n}\n"
            L23:
                boolean r1 = r4.contains(r1)     // Catch: java.lang.Throwable -> L66
                if (r1 == 0) goto L5e
                boolean r1 = r4.contains(r0)     // Catch: java.lang.Throwable -> L66
                if (r1 == 0) goto L5e
                r2.<init>(r3, r4)
                r3 = -1
                r2.mSamplerLoc = r3
                r2.mTexMatrixLoc = r3
                r2.mTexCoordLoc = r3
                r2.loadLocations$1()
                int r3 = r2.mProgramHandle
                int r4 = android.opengl.GLES20.glGetUniformLocation(r3, r0)
                r2.mSamplerLoc = r4
                androidx.camera.core.processing.util.GLUtils.checkLocationOrThrow(r0, r4)
                java.lang.String r4 = "aTextureCoord"
                int r0 = android.opengl.GLES20.glGetAttribLocation(r3, r4)
                r2.mTexCoordLoc = r0
                androidx.camera.core.processing.util.GLUtils.checkLocationOrThrow(r4, r0)
                java.lang.String r4 = "uTexMatrix"
                int r3 = android.opengl.GLES20.glGetUniformLocation(r3, r4)
                r2.mTexMatrixLoc = r3
                androidx.camera.core.processing.util.GLUtils.checkLocationOrThrow(r4, r3)
                return
            L5e:
                java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L66
                java.lang.String r3 = "Invalid fragment shader"
                r2.<init>(r3)     // Catch: java.lang.Throwable -> L66
                throw r2     // Catch: java.lang.Throwable -> L66
            L66:
                r2 = move-exception
                boolean r3 = r2 instanceof java.lang.IllegalArgumentException
                if (r3 == 0) goto L6c
                throw r2
            L6c:
                java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
                java.lang.String r4 = "Unable retrieve fragment shader source"
                r3.<init>(r4, r2)
                throw r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.processing.util.GLUtils.SamplerShaderProgram.<init>(androidx.camera.core.DynamicRange, androidx.camera.core.processing.util.GLUtils$1):void");
        }

        @Override // androidx.camera.core.processing.util.GLUtils.Program2D
        public final void use() {
            super.use();
            GLES20.glUniform1i(this.mSamplerLoc, 0);
            GLES20.glEnableVertexAttribArray(this.mTexCoordLoc);
            GLUtils.checkGlErrorOrThrow("glEnableVertexAttribArray");
            GLES20.glVertexAttribPointer(this.mTexCoordLoc, 2, 5126, false, 0, (Buffer) GLUtils.TEX_BUF);
            GLUtils.checkGlErrorOrThrow("glVertexAttribPointer");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public SamplerShaderProgram(androidx.camera.core.DynamicRange r4, androidx.camera.core.processing.util.GLUtils.InputFormat r5) {
            /*
                r3 = this;
                boolean r0 = r4.is10BitHdr()
                if (r0 == 0) goto L28
                androidx.camera.core.processing.util.GLUtils$InputFormat r0 = androidx.camera.core.processing.util.GLUtils.InputFormat.UNKNOWN
                if (r5 == r0) goto Lc
                r0 = 1
                goto Ld
            Lc:
                r0 = 0
            Ld:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                java.lang.String r2 = "No default sampler shader available for"
                r1.<init>(r2)
                r1.append(r5)
                java.lang.String r1 = r1.toString()
                androidx.room.util.RelationUtil.checkArgument(r1, r0)
                androidx.camera.core.processing.util.GLUtils$InputFormat r0 = androidx.camera.core.processing.util.GLUtils.InputFormat.YUV
                if (r5 != r0) goto L25
                androidx.camera.core.processing.util.GLUtils$1 r5 = androidx.camera.core.processing.util.GLUtils.SHADER_PROVIDER_HDR_YUV
                goto L2a
            L25:
                androidx.camera.core.processing.util.GLUtils$1 r5 = androidx.camera.core.processing.util.GLUtils.SHADER_PROVIDER_HDR_DEFAULT
                goto L2a
            L28:
                androidx.camera.core.processing.util.GLUtils$1 r5 = androidx.camera.core.processing.util.GLUtils.SHADER_PROVIDER_DEFAULT
            L2a:
                r3.<init>(r4, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.processing.util.GLUtils.SamplerShaderProgram.<init>(androidx.camera.core.DynamicRange, androidx.camera.core.processing.util.GLUtils$InputFormat):void");
        }
    }
}
