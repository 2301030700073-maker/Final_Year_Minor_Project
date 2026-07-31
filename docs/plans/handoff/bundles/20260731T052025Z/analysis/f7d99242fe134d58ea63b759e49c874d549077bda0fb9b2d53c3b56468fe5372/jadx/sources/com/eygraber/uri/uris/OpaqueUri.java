package com.eygraber.uri.uris;

import com.eygraber.uri.Uri;
import com.eygraber.uri.parts.Part;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OpaqueUri implements Uri {
    public final SynchronizedLazyImpl cachedString$delegate;
    public final SynchronizedLazyImpl encodedFragment$delegate;
    public final SynchronizedLazyImpl encodedSchemeSpecificPart$delegate;
    public final Part fragmentPart;
    public final String scheme;
    public final Part ssp;

    public OpaqueUri(String str, Part part, Part part2) {
        part.getClass();
        this.scheme = str;
        this.ssp = part;
        this.fragmentPart = part2 == null ? Part.NULL : part2;
        final int i = 0;
        this.encodedSchemeSpecificPart$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.OpaqueUri$$ExternalSyntheticLambda0
            public final /* synthetic */ OpaqueUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                OpaqueUri opaqueUri = this.f$0;
                switch (i2) {
                    case 0:
                        return opaqueUri.ssp.getEncoded();
                    case 1:
                        return opaqueUri.ssp.getDecoded();
                    case 2:
                        return opaqueUri.fragmentPart.getDecoded();
                    case 3:
                        return opaqueUri.fragmentPart.getEncoded();
                    default:
                        StringBuilder sb = new StringBuilder();
                        sb.append(opaqueUri.scheme);
                        sb.append(':');
                        sb.append((String) opaqueUri.encodedSchemeSpecificPart$delegate.getValue());
                        if (!opaqueUri.fragmentPart.isEmpty()) {
                            sb.append('#');
                            sb.append((String) opaqueUri.encodedFragment$delegate.getValue());
                        }
                        return sb.toString();
                }
            }
        });
        final int i2 = 1;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.OpaqueUri$$ExternalSyntheticLambda0
            public final /* synthetic */ OpaqueUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                OpaqueUri opaqueUri = this.f$0;
                switch (i22) {
                    case 0:
                        return opaqueUri.ssp.getEncoded();
                    case 1:
                        return opaqueUri.ssp.getDecoded();
                    case 2:
                        return opaqueUri.fragmentPart.getDecoded();
                    case 3:
                        return opaqueUri.fragmentPart.getEncoded();
                    default:
                        StringBuilder sb = new StringBuilder();
                        sb.append(opaqueUri.scheme);
                        sb.append(':');
                        sb.append((String) opaqueUri.encodedSchemeSpecificPart$delegate.getValue());
                        if (!opaqueUri.fragmentPart.isEmpty()) {
                            sb.append('#');
                            sb.append((String) opaqueUri.encodedFragment$delegate.getValue());
                        }
                        return sb.toString();
                }
            }
        });
        final int i3 = 2;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.OpaqueUri$$ExternalSyntheticLambda0
            public final /* synthetic */ OpaqueUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                OpaqueUri opaqueUri = this.f$0;
                switch (i22) {
                    case 0:
                        return opaqueUri.ssp.getEncoded();
                    case 1:
                        return opaqueUri.ssp.getDecoded();
                    case 2:
                        return opaqueUri.fragmentPart.getDecoded();
                    case 3:
                        return opaqueUri.fragmentPart.getEncoded();
                    default:
                        StringBuilder sb = new StringBuilder();
                        sb.append(opaqueUri.scheme);
                        sb.append(':');
                        sb.append((String) opaqueUri.encodedSchemeSpecificPart$delegate.getValue());
                        if (!opaqueUri.fragmentPart.isEmpty()) {
                            sb.append('#');
                            sb.append((String) opaqueUri.encodedFragment$delegate.getValue());
                        }
                        return sb.toString();
                }
            }
        });
        final int i4 = 3;
        this.encodedFragment$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.OpaqueUri$$ExternalSyntheticLambda0
            public final /* synthetic */ OpaqueUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                OpaqueUri opaqueUri = this.f$0;
                switch (i22) {
                    case 0:
                        return opaqueUri.ssp.getEncoded();
                    case 1:
                        return opaqueUri.ssp.getDecoded();
                    case 2:
                        return opaqueUri.fragmentPart.getDecoded();
                    case 3:
                        return opaqueUri.fragmentPart.getEncoded();
                    default:
                        StringBuilder sb = new StringBuilder();
                        sb.append(opaqueUri.scheme);
                        sb.append(':');
                        sb.append((String) opaqueUri.encodedSchemeSpecificPart$delegate.getValue());
                        if (!opaqueUri.fragmentPart.isEmpty()) {
                            sb.append('#');
                            sb.append((String) opaqueUri.encodedFragment$delegate.getValue());
                        }
                        return sb.toString();
                }
            }
        });
        final int i5 = 4;
        this.cachedString$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.OpaqueUri$$ExternalSyntheticLambda0
            public final /* synthetic */ OpaqueUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i5;
                OpaqueUri opaqueUri = this.f$0;
                switch (i22) {
                    case 0:
                        return opaqueUri.ssp.getEncoded();
                    case 1:
                        return opaqueUri.ssp.getDecoded();
                    case 2:
                        return opaqueUri.fragmentPart.getDecoded();
                    case 3:
                        return opaqueUri.fragmentPart.getEncoded();
                    default:
                        StringBuilder sb = new StringBuilder();
                        sb.append(opaqueUri.scheme);
                        sb.append(':');
                        sb.append((String) opaqueUri.encodedSchemeSpecificPart$delegate.getValue());
                        if (!opaqueUri.fragmentPart.isEmpty()) {
                            sb.append('#');
                            sb.append((String) opaqueUri.encodedFragment$delegate.getValue());
                        }
                        return sb.toString();
                }
            }
        });
    }

    @Override // com.eygraber.uri.Uri
    public final Uri.Builder buildUpon() {
        Uri.Builder builder = new Uri.Builder(0, false);
        builder.scheme = this.scheme;
        builder.opaquePart = this.ssp;
        builder.fragment = this.fragmentPart;
        return builder;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Uri uri) {
        Uri uri2 = uri;
        uri2.getClass();
        return toString().compareTo(uri2.toString());
    }

    public final boolean equals(Object obj) {
        return (obj instanceof Uri) && Intrinsics.areEqual(toString(), obj.toString());
    }

    public final int hashCode() {
        return toString().hashCode();
    }

    public final String toString() {
        return (String) this.cachedString$delegate.getValue();
    }
}
