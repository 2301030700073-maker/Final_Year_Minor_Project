package com.eygraber.uri.uris;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.DBUtil;
import com.eygraber.uri.PathSegments;
import com.eygraber.uri.Uri;
import com.eygraber.uri.parts.Part;
import com.eygraber.uri.parts.PathPart;
import java.util.List;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HierarchicalUri extends AbstractHierarchicalUri {
    public final Part authorityPart;
    public final SynchronizedLazyImpl encodedAuthority$delegate;
    public final SynchronizedLazyImpl encodedFragment$delegate;
    public final Part fragmentPart;
    public final PathPart pathPart;
    public final SynchronizedLazyImpl pathSegments$delegate;
    public final Part queryPart;
    public final String scheme;
    public final SynchronizedLazyImpl ssp$delegate;
    public final SynchronizedLazyImpl uriString$delegate;

    public HierarchicalUri(String str, Part part, PathPart pathPart, Part part2, Part part3) {
        this.scheme = str;
        Part.EmptyPart emptyPart = Part.NULL;
        this.authorityPart = part == null ? Part.NULL : part;
        this.pathPart = pathPart == null ? PathPart.NULL : pathPart;
        this.queryPart = part2 == null ? Part.NULL : part2;
        this.fragmentPart = part3 == null ? Part.NULL : part3;
        final int i = 0;
        this.ssp$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i2) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i2 = 7;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i3 = 8;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i4 = 9;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i5 = 10;
        this.encodedAuthority$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i5;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i6 = 11;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i6;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i7 = 12;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i7;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i8 = 1;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i8;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i9 = 2;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i9;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i10 = 3;
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i10;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i11 = 4;
        this.encodedFragment$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i11;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i12 = 5;
        this.pathSegments$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i12;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
        final int i13 = 6;
        this.uriString$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.eygraber.uri.uris.HierarchicalUri$$ExternalSyntheticLambda0
            public final /* synthetic */ HierarchicalUri f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i13;
                HierarchicalUri hierarchicalUri = this.f$0;
                switch (i22) {
                    case 0:
                        Part.EmptyPart emptyPart2 = Part.NULL;
                        StringBuilder sb = new StringBuilder();
                        hierarchicalUri.appendSspTo(sb);
                        return DBUtil.fromEncoded(sb.toString());
                    case 1:
                        return hierarchicalUri.queryPart.getDecoded();
                    case 2:
                        return hierarchicalUri.queryPart.getEncoded();
                    case 3:
                        return hierarchicalUri.fragmentPart.getDecoded();
                    case 4:
                        return hierarchicalUri.fragmentPart.getEncoded();
                    case 5:
                        return (PathSegments) hierarchicalUri.pathPart.pathSegments$delegate.getValue();
                    case 6:
                        StringBuilder sb2 = new StringBuilder();
                        String str2 = hierarchicalUri.scheme;
                        if (str2 != null) {
                            sb2.append(str2);
                            sb2.append(':');
                        }
                        hierarchicalUri.appendSspTo(sb2);
                        if (!hierarchicalUri.fragmentPart.isEmpty()) {
                            sb2.append('#');
                            sb2.append((String) hierarchicalUri.encodedFragment$delegate.getValue());
                        }
                        return sb2.toString();
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getEncoded();
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((Part) hierarchicalUri.ssp$delegate.getValue()).getDecoded();
                    case 9:
                        return hierarchicalUri.authorityPart.getDecoded();
                    case 10:
                        return hierarchicalUri.authorityPart.getEncoded();
                    case 11:
                        return hierarchicalUri.pathPart.getEncoded();
                    default:
                        return hierarchicalUri.pathPart.getDecoded();
                }
            }
        });
    }

    public final void appendSspTo(StringBuilder sb) {
        String encoded = this.authorityPart.getEncoded();
        if (encoded != null) {
            sb.append("//");
            sb.append(encoded);
        }
        String encoded2 = this.pathPart.getEncoded();
        if (encoded2 != null) {
            sb.append(encoded2);
        }
        Part part = this.queryPart;
        if (part.isEmpty()) {
            return;
        }
        sb.append('?');
        sb.append(part.getEncoded());
    }

    @Override // com.eygraber.uri.Uri
    public final Uri.Builder buildUpon() {
        Uri.Builder builder = new Uri.Builder(0, false);
        builder.scheme = this.scheme;
        builder.authority = this.authorityPart;
        builder.path = this.pathPart;
        builder.opaquePart = null;
        builder.query = this.queryPart;
        builder.fragment = this.fragmentPart;
        return builder;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof Uri) && Intrinsics.areEqual(toString(), obj.toString());
    }

    @Override // com.eygraber.uri.Uri
    public final String getEncodedAuthority() {
        return (String) this.encodedAuthority$delegate.getValue();
    }

    @Override // com.eygraber.uri.Uri
    public final List getPathSegments() {
        return (List) this.pathSegments$delegate.getValue();
    }

    public final int hashCode() {
        return toString().hashCode();
    }

    public final String toString() {
        return (String) this.uriString$delegate.getValue();
    }
}
