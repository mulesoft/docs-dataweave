#!/bin/bash

# List of branches to process
branches=(
    "W-18823869-tech-debt-v2.5-hn"
    "W-18823869-tech-debt-v2.6-hn"
    "W-18823869-tech-debt-v2.7-hn"
    "W-18823869-tech-debt-v2.8-hn"
    "W-18823869-tech-debt-v2.9-hn"
)

# List of files that need to be modified
files=(
    "modules/ROOT/pages/dataweave-language-introduction.adoc"
    "modules/ROOT/pages/dataweave-functions-lambdas.adoc"
    "modules/ROOT/pages/dataweave-variables-context.adoc"
    "modules/ROOT/pages/dataweave-pattern-matching.adoc"
    "modules/ROOT/pages/dataweave-runtime-functions.adoc"
    "modules/ROOT/pages/dataweave-flow-control-precedence.adoc"
    "modules/ROOT/pages/dataweave-flow-control.adoc"
    "modules/ROOT/pages/dataweave-functions.adoc"
    "modules/ROOT/pages/dataweave-variables.adoc"
    "modules/ROOT/pages/dataweave-quickstart.adoc"
    "modules/ROOT/pages/dataweave-flat-file-schemas.adoc"
    "modules/ROOT/pages/dataweave-formats.adoc"
    "modules/ROOT/pages/dataweave-types-coercion.adoc"
    "modules/ROOT/pages/dataweave-create-module.adoc"
    "modules/ROOT/pages/dataweave-types.adoc"
    "modules/ROOT/pages/dataweave-selectors.adoc"
)

# Process each branch
for branch in "${branches[@]}"; do
    echo "Processing branch: $branch"
    
    # Checkout the branch
    git checkout "$branch"
    
    if [ $? -eq 0 ]; then
        # Process each file
        for file in "${files[@]}"; do
            if [ -f "$file" ]; then
                # Use sed to comment out the specific line
                sed -i '' 's/^include::partial\$dataweave1-links\.adoc\[tag=dataweave1LandingPage\]/\/\/&/' "$file"
                echo "  Modified: $file"
            fi
        done
        
        # Add and commit changes
        git add -A
        git commit -m "Comment out dataweave1-links include statements"
        echo "  Committed changes for $branch"
        echo ""
    else
        echo "  Failed to checkout $branch"
        echo ""
    fi
done

echo "All branches processed!" 