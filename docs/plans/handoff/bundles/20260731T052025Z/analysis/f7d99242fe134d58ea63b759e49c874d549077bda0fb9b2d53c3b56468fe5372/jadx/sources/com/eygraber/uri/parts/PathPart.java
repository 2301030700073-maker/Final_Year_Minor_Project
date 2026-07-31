package com.eygraber.uri.parts;

import com.eygraber.uri.UriCodec;
import kotlin.SynchronizedLazyImpl;
import kotlin.ranges.CharRange;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PathPart extends AbstractPart {
    public final SynchronizedLazyImpl pathSegments$delegate;
    public static final PathPart NULL = new PathPart(null, null);
    public static final PathPart EMPTY = new PathPart("", "");

    public PathPart(String str, String str2) {
        super(str, str2);
        this.pathSegments$delegate = new SynchronizedLazyImpl(new PathPart$$ExternalSyntheticLambda0(str, 0));
    }

    @Override // com.eygraber.uri.parts.AbstractPart
    public final String encode(String str) {
        CharRange charRange = UriCodec.lowercaseAsciiAlphaRange;
        if (str == null) {
            return null;
        }
        return UriCodec.encode(str, "/");
    }
}
